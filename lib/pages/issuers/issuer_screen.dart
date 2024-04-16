import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:string_validator/string_validator.dart';
import 'package:zawadi/global/styles/app_colors.dart';

import '../../global/widgets/app_bar.dart';
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
          ? const ErrorMessage(
          message: 'Something went wrong with your request, try again later!',)
          : ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  issuerName,
                  style: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'QrooFont',
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _SelectedCard( backgroundColor: selectedCard.value?.bgColor ),
                  Hero(
                    tag: "BottomSheet",
                    child: _GiftCardValue(
                      model: selectedCard.value,
                    ),
                  ),
                ],
              ),
            ],
      ),
    );
  }
}














class _SelectedCard extends ConsumerWidget {
  const _SelectedCard({ Key? key, this.backgroundColor }) : super(key: key);

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final selectedCard = ref.watch(selectedCardProvider);
    final selectedCardNotifier = ref.read(selectedCardProvider.notifier);
    final selectedGiftAmount = ref.watch(selectedGiftAmountProvider) ?? 10000;

    return Container(
      color: backgroundColor,
      height: size.height * 0.5,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: selectedCard.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (card) => Row(
          children: [
            IconButton(
              onPressed: () => selectedCardNotifier.prevCard(),
              icon: const Icon(Icons.arrow_back),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      spreadRadius: 2,
                      offset: Offset(2, 2),
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
              icon: const Icon(Icons.arrow_forward_sharp),
            ),
          ],
        ),
        error: (e, s) => Center(child: Text("Card not found: $e")),
      ),
    );
  }
}

class _GiftCardValue extends ConsumerWidget {
  final CardModel? model;

  const _GiftCardValue({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final selectedAmount = ref.watch(selectedGiftAmountProvider);
    final isAmountSelected = selectedAmount != null;
    final selectedCard = model;

    return Container(
      padding: const EdgeInsets.only(
        bottom: 10.0,
        left: 20.0,
        right: 20.0,
      ),
      color: Colors.white,
      width: double.infinity,
      height: size.height * 0.25,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 10),
          const Text("Select Amount"),
          SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                ...[50, 100, 200, 500, 1000].map(
                      (value) {
                    return CustomChips(
                      label: '\$$value',
                      focusColor: Colors.black87,
                      isSelected: selectedAmount == value,
                      onTap: () {
                        ref
                            .read(selectedGiftAmountProvider.notifier)
                            .setSelectedAmount(value);
                      },
                    );
                  },
                ).toList(),
                const SizedBox(width: 24),
              ],
            ),
          ),
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
