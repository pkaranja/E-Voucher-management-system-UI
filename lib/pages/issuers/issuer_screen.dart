import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:string_validator/string_validator.dart';
import 'package:zawadi/global/styles/app_colors.dart';
import '../../global/input_validators.dart';
import '../../global/widgets/app_bar.dart';
import '../../global/widgets/text_input_widget.dart';
import '../../models/voucher_model.dart';
import '../../widgets/error_message_widget.dart';
import '../vouchers/carddesign/providers/selected_card_provider.dart';
import '../vouchers/carddesign/providers/selected_gift_amount_provider.dart';
import '../vouchers/carddesign/screens/card_detail_input_data_screen.dart';
import '../vouchers/carddesign/widgets/custom_chip_widget.dart';
import '../vouchers/carddesign/widgets/custom_elevated_button.dart';
import '../vouchers/carddesign/widgets/custom_gift_card.dart';

class IssuerScreen extends ConsumerWidget {
  final int cardId;
  final String issuerId;
  final String issuerName;

  const IssuerScreen({Key? key, required this.issuerId, required this.cardId, required this.issuerName}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCard = ref.watch(selectedCardProvider);

    return Scaffold(
      backgroundColor: selectedCard.value?.bgColor,
      appBar: const QrooAppBar(
        title1: 'Zawadi',
        title2: ' Digital',
        hasBackButton: true,
      ),
      body: !isUUID(issuerId)
        ? const ErrorMessage( message: 'Something went wrong with your request, try again later!',)
        : Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    //TODO: Discuss section title
                    //issuerName,
                    'Design your card',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: selectedCard.value?.fontColor, // Change color here
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: _SelectedCard( backgroundColor: selectedCard.value?.bgColor, fontColor: selectedCard.value?.fontColor ),
              ),
              Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  child:_GiftCardDetails(model: selectedCard.value, ),
                ),
              ),
            ],
          ),
    );
  }
}














class _SelectedCard extends ConsumerWidget {
  const _SelectedCard({ Key? key, this.backgroundColor, this.fontColor }) : super(key: key);
  final Color? backgroundColor;
  final Color? fontColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final selectedCard = ref.watch(selectedCardProvider);
    final selectedCardNotifier = ref.read(selectedCardProvider.notifier);
    final selectedGiftAmount = ref.watch(selectedGiftAmountProvider) ?? 10000;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: selectedCard.when(
        loading: () => Center(
          child: SpinKitSpinningLines(
            color: fontColor ?? Theme.of(context).hintColor,
            size: 40.h,
          ),
        ),
        data: (card) => Row(
          children: [
            IconButton(
              onPressed: () => selectedCardNotifier.prevCard(),
              icon: const Icon(Icons.arrow_back),
              color: fontColor,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: fontColor ?? Theme.of(context).hintColor,
                      blurRadius: 10.0,
                      spreadRadius: 2,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: CustomGiftCard(
                  model: card,
                  width: size.width,
                  value: selectedGiftAmount,
                  showValue: selectedGiftAmount != null,
                  showLabel: false,
                ),
              ),
            ),
            IconButton(
              onPressed: () => selectedCardNotifier.nextCard(),
              icon: Icon(
                  Icons.arrow_forward_sharp,
                  color: fontColor ?? Theme.of(context).hintColor,
              ),
            ),
          ],
        ),
        error: (e, s) => Center(child: Text("Card not found: $e")),
      ),
    );
  }
}

class _GiftCardDetails extends ConsumerWidget {
  final CardModel? model;

  _GiftCardDetails({
    Key? key,
    required this.model,
  }) : super(key: key);

  //Form init
  final InputValidators formValidator = InputValidators();
  final TextEditingController giftCardTitleController = TextEditingController();
  final TextEditingController giftCardAmountController = TextEditingController();
  final TextEditingController giftCardMessageController = TextEditingController();
  final FocusNode giftCardTitleFocusNode = FocusNode();
  final FocusNode giftCardAmountFocusNode = FocusNode();
  final FocusNode giftCardMessageFocusNode = FocusNode();


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final selectedAmount = ref.watch(selectedGiftAmountProvider);
    final isAmountSelected = selectedAmount != null;
    final selectedCard = model;

    void _handleAmountChange(String value) {
      int parsedValue = int.tryParse(value) ?? 0;
      int inputValue = parsedValue <= 50000 ? parsedValue : 50000;

      ref
          .read(selectedGiftAmountProvider.notifier)
          .setSelectedAmount(inputValue);
    }

    void _handleTitleChange(String value) {

    }

    void _handleMessageChange(String value) {

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
            toggleObscureText: null,
            validator: formValidator.textValidator,
            prefIcon: const Icon(Icons.phone, size: 18),
            hint: "Enter gift card title",
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            isNonPasswordField: true,
          ),
          SizedBox(height: 10.h),
          DynamicInputWidget(
            controller: giftCardAmountController,
            obscureText: false,
            focusNode: giftCardAmountFocusNode,
            toggleObscureText: null,
            validator: formValidator.textValidator,
            prefIcon: const Icon(Icons.monetization_on_outlined, size: 18),
            hint: "Enter gift card amount",
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(5)],
            isNonPasswordField: true,
            onChanged: _handleAmountChange,
          ),
          SizedBox(height: 10.h),
          // Text("Select amount", style: Theme.of(context).textTheme.titleMedium,),
          // SizedBox(
          //   height: 50,
          //   child: ListView(
          //     shrinkWrap: true,
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       ...[50000, 100000, 200000, 500000, 1000000].map(
          //             (value) {
          //           return CustomChips(
          //             label: '\Tsh$value',
          //             focusColor: Theme.of(context).hintColor,
          //             isSelected: selectedAmount == value,
          //             onTap: () {
          //               ref
          //                   .read(selectedGiftAmountProvider.notifier)
          //                   .setSelectedAmount(value);
          //             },
          //           );
          //         },
          //       ).toList(),
          //       const SizedBox(width: 24),
          //     ],
          //   ),
          // ),
          // SizedBox(height: 10.h),
          DynamicInputWidget(
            controller: giftCardMessageController,
            obscureText: false,
            focusNode: giftCardMessageFocusNode,
            toggleObscureText: null,
            validator: formValidator.textValidator,
            prefIcon: const Icon(Icons.message, size: 18),
            hint: "Enter gift card message",
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            isNonPasswordField: true,
            maxLines: 3,
          ),
          SizedBox(height: 20.h),
          CustomElevatedButton(
            text: 'Continue',
            backgroundColor: isAmountSelected ? themePrimaryDarkColor : Colors.grey,
            fixedSize: Size(size.width, 50),
            onPressed: () {
              isAmountSelected && selectedCard != null
                  ? Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardDetailInputScreen(
                    model: selectedCard,
                    giftValue: selectedAmount,
                  ),
                ),
              )
                  : null;
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
