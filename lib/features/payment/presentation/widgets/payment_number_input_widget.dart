import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zawadi/core/handlers/error_handler.dart';
import 'package:zawadi/core/styles/app_colors.dart';
import 'package:zawadi/features/authentication/models/profile_model.dart';
import 'package:zawadi/features/payment/data/dto/transaction_response_dto.dart';
import 'package:zawadi/features/payment/data/model/transaction_model.dart';
import 'package:zawadi/features/payment/presentation/widgets/payment_status_widget.dart';
import 'package:zawadi/features/payment/provider/payment_status_provider.dart';
import 'package:zawadi/features/payment/repository/payment_repository_impl.dart';

import '../../../../controllers/profile_controller.dart';
import '../../../../core/helpers/app_exception.dart';
import '../../../../core/helpers/input_validators.dart';
import '../../../../core/presentation/widgets/loading_button_widget.dart';
import '../../../../core/presentation/widgets/text_input_widget.dart';
import '../../../../core/styles/animations.dart';
import '../../../../gen/assets.gen.dart';
import '../../../gift_cards/provider/temporary_giftcard_provider.dart';
import '../../provider/selected_payment_method_provider.dart';

class PaymentNumberInputWidget extends ConsumerWidget {
  const PaymentNumberInputWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedPaymentMethod = ref.watch(selectedPaymentMethodProvider);
    final giftcardDetails = ref.watch(temporaryGiftcardProvider);

    final InputValidators formValidator = InputValidators();

    final TextEditingController paymentNumberController = TextEditingController();
    final FocusNode paymentFocusNode = FocusNode();

    //WidgetsBinding.instance.addPostFrameCallback((_) => paymentFocusNode.requestFocus());

    Future<ProfileModel> initiateProfile() async{
      ProfileModel userProfileData = await ProfileController().getProfileFromPreferences();
      return userProfileData;
    }


    submitTransaction(BuildContext context) async {
      ref.read(processingPaymentStateProvider.notifier).state = true;

      showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          isDismissible: false,
          builder: (_) => const PaymentStatusWidget()
      );

      ProfileModel userProfileData = await initiateProfile();

      TransactionModel transaction = TransactionModel(
        issuerId: giftcardDetails!.issuerId,
        purchaserId: userProfileData.profileId!,
        recipient: giftcardDetails.recipient.toString(),
        giftcardTheme: giftcardDetails.themeId.toString(),
        giftcartTitle: giftcardDetails.title,
        giftCardMessage: giftcardDetails.message,
        transactionAmount: giftcardDetails.amount,
        transactionPhoneNumber: paymentNumberController.text,
        provider: selectedPaymentMethod!.name,
        currency: 'TZS'
      );

      //perform transaction
      ref.read(paymentRepositoryProvider).createOne(request: transaction).then((result) {
        result.fold(
          (error) {
            // Payment failed
            ref.read(paymentStateProvider.notifier).state = false;
            if (kDebugMode) {
              print(error.toString());
            }
          },
          (response) {
            // Payment success
            ref.read(paymentStateProvider.notifier).state = true;
          }
        );
      })
      .catchError((e) {
        // Log the error message
        handleError("Error handling payment", e);
      });

      ref.read(processingPaymentStateProvider.notifier).state = false;
    }


    return AnimatedContainer(
      duration: AppAnimation.kAnimationDuration,
      curve: AppAnimation.kAnimationCurve,
      color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 10.h),
            DynamicInputWidget(
              controller: paymentNumberController,
              obscureText: false,
              focusNode: paymentFocusNode,
              validator: formValidator.textValidator,
              prefIcon: IconButton(
                icon: SvgPicture.asset(
                  Assets.svgs.phone,
                  colorFilter: ColorFilter.mode(Theme.of(context).hintColor, BlendMode.srcIn),
                ), onPressed: () {  },
              ),
              hint: "Enter phone number",
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.phone,
              isNonPasswordField: true,
            ),
            SizedBox(height: 10.h),
            TButton(
              loading: false,
              constraints: BoxConstraints.loose(Size.infinite),
              btnColor: Theme.of(context).primaryColor,
              //btnColor: isAmountEmpty & isTitleEmpty & isMessageEmpty ? Theme.of(context).primaryColor : Colors.grey,
              btnText: 'Pay',
              onPressed: () async {
                //Hide keyboard
                FocusScope.of(context).unfocus();
                submitTransaction(context);
              },
            ),
            SizedBox(height: MediaQuery.of(context).viewInsets.bottom), // Adjust for keyboard
          ],
        ),
      ),
    );
  }
}