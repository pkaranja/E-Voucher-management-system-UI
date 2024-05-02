import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../../controllers/profile_controller.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/handlers/error_handler.dart';
import '../../../../core/helpers/input_validators.dart';
import '../../../../core/presentation/widgets/loading_button_widget.dart';
import '../../../../core/presentation/widgets/text_input_widget.dart';
import '../../../authentication/models/profile_model.dart';
import '../../data/model/giftcard_theme_model.dart';
import '../../../payment/presentation/screens/order_details_screen.dart';
import '../../data/model/giftcard_model.dart';
import '../../provider/giftcard_provider.dart';
import '../../provider/temporary_giftcard_provider.dart';
import '../../repository/giftcard_repository_impl.dart';

class GiftCardDetailsWidget extends ConsumerStatefulWidget{
  const GiftCardDetailsWidget({Key? key, required this.model, required this.issuerId}) : super(key: key);

  final GiftcardThemeModel? model;
  final String issuerId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GiftCardDetailsWidgetState();
}

class _GiftCardDetailsWidgetState extends ConsumerState<GiftCardDetailsWidget>{
  late ProfileModel userProfileData;

  //Form init
  final InputValidators formValidator = InputValidators();

  final TextEditingController giftCardTitleController = TextEditingController();
  final TextEditingController giftCardAmountController = TextEditingController();
  final TextEditingController giftCardRecipientController = TextEditingController();
  final TextEditingController giftCardMessageController = TextEditingController();

  final FocusNode giftCardTitleFocusNode = FocusNode();
  final FocusNode giftCardAmountFocusNode = FocusNode();
  final FocusNode giftCardRecipientFocusNode = FocusNode();
  final FocusNode giftCardMessageFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    //initiate user profile
    initiateProfile();
  }

  @override
  void dispose() {
    giftCardTitleController.dispose();
    giftCardAmountController.dispose();
    giftCardRecipientController.dispose();
    giftCardMessageController.dispose();
    giftCardTitleFocusNode.dispose();
    giftCardAmountFocusNode.dispose();
    giftCardRecipientFocusNode.dispose();
    giftCardMessageFocusNode.dispose();
    super.dispose();
  }

  Future<void> initiateProfile() async {
    userProfileData = await ProfileController().getProfileFromPreferences();
  }

  void _handleAmountChange(String value) {
    int parsedValue = int.tryParse(value) ?? 0;
    int inputValue = parsedValue <= 50000 ? parsedValue : 50000;

    ref.watch(temporaryGiftcardProvider.notifier).setGiftcardAmount(inputValue);
  }

  void _handleTitleChange(String value) {
    ref.read(temporaryGiftcardProvider.notifier).setGiftcardTitle(value);
  }

  void _handleMessageChange(String value) {
    final value = giftCardMessageController.text;
    ref.read(temporaryGiftcardProvider.notifier).setGiftcardMessage(value);
  }

  _pickContact() async {
    try {
      if (await Permission.contacts.request().isGranted) {

        final PhoneContact contact = await FlutterContactPicker.pickPhoneContact();
        giftCardRecipientController.text = contact.phoneNumber.toString();

        ref.read(temporaryGiftcardProvider.notifier).setGiftcardRecipient(contact);
      }
    } catch (e) {
      if (kDebugMode) {
        print('Permission denied: ${e.toString()}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool loading = false;
    final temporaryGiftcard = ref.read( temporaryGiftcardProvider );

    createGiftcard(){
      loading = false;

      try {
        if (loading) {
          showTopSnackBar( Overlay.of(context),
            const CustomSnackBar.info(
              message: 'Please fill in all the required fields before proceeding!',
            ),
          );
          throw 'Error creating gift card, form not complete';
        }
      }catch(e){
        if (kDebugMode) {
          print('Error creating gift card, form not complete');
        }
        throw e;
      }

      GiftcardModel newGiftcard = GiftcardModel(
          id: '',
          code: '',
          cvv: 0,
          dateCreated: DateTime.now(),
          expirationDate: DateTime.now(),
          lastUpdated: DateTime.now(),
          title: temporaryGiftcard!.title,
          message: temporaryGiftcard.message,
          themeId: temporaryGiftcard.themeId,
          recipient: temporaryGiftcard.recipient!.phoneNumber.toString(),
          value: temporaryGiftcard.amount,
          purchaserId: userProfileData.profileId!,
          transactionId: '',
          issuerId: temporaryGiftcard.issuerId,
          status: GiftcardState.PENDING
      );

      ref
          .read(giftcardRepositoryProvider)
          .createOne(request: newGiftcard)
          .then((value) {
        value.fold((l) {
          handleError("Error creating gift card", 'Issuer: ${l.toString()}');
          showTopSnackBar(
            Overlay.of(context),
            const CustomSnackBar.error(
              message:
              'Something went wrong while processing your request, please try again',
            ),
          );
        }, (r) {
          ref.read(giftcardProvider.notifier).getAll();
        });
      });

      loading = false;
    }

    return Container(
      color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsets.only( left: 20.0, right: 20.0, ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 10.h),
          DynamicInputWidget(
            controller: giftCardTitleController,
            obscureText: false,
            focusNode: giftCardTitleFocusNode,
            suffixClickAction: null,
            validator: formValidator.textValidator,
            prefIcon: const Icon(Icons.phone, size: 18),
            hint: "Enter gift card title",
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            isNonPasswordField: true,
            onChanged: _handleTitleChange,
          ),
          SizedBox(height: 10.h),
          DynamicInputWidget(
              controller: giftCardAmountController,
              obscureText: false,
              focusNode: giftCardAmountFocusNode,
              suffixClickAction: null,
              validator: formValidator.textValidator,
              prefIcon: const Icon(Icons.monetization_on_outlined, size: 18),
              hint: "Enter gift card amount",
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(5)],
              isNonPasswordField: true,
              onChanged: _handleAmountChange
          ),
          SizedBox(height: 10.h),
          DynamicInputWidget(
            controller: giftCardRecipientController,
            obscureText: false,
            focusNode: giftCardRecipientFocusNode,
            suffixClickAction: _pickContact,
            validator: formValidator.textValidator,
            prefIcon: const Icon(Icons.person, size: 18),
            hint: "Select gift card recipient",
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            isNonPasswordField: true,
            suffixIcon: const Icon(Icons.contacts),
          ),
          SizedBox(height: 10.h),
          DynamicInputWidget(
            controller: giftCardMessageController,
            obscureText: false,
            focusNode: giftCardMessageFocusNode,
            suffixClickAction: null,
            validator: formValidator.textValidator,
            prefIcon: const Icon(Icons.message, size: 18),
            hint: "Enter gift card message",
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            isNonPasswordField: true,
            maxLines: 3,
            onChanged: _handleMessageChange,
          ),
          SizedBox(height: 20.h),
          TButton(
            loading: loading,
            constraints: BoxConstraints.loose(Size.infinite),
            btnColor:Theme.of(context).primaryColor,
            //btnColor: isAmountEmpty & isTitleEmpty & isMessageEmpty ? Theme.of(context).primaryColor : Colors.grey,
            btnText: 'Continue',
            onPressed: () async {
              await createGiftcard();
              Navigator.push( context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetailsScreen( model: widget.model!, ),
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}