import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../models/voucher_model.dart';
import '../providers/selected_card_provider.dart';
import '../providers/selected_gift_amount_provider.dart';
import '../utilities/app_text.dart';
import '../widgets/custom_chip_widget.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_gift_card.dart';
import 'card_detail_input_data_screen.dart';

class CardDetailScreen extends ConsumerWidget {
  final int cardId;

  const CardDetailScreen({
    Key? key,
    required this.cardId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCard = ref.watch(selectedCardProvider);

      return Column(
        children: [
          Expanded(
            child: Text("Top"),
          ),
          Text("Bottom"),
        ],
      );
    }
}

class _SelectedCard extends ConsumerWidget {
  const _SelectedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final selectedCard = ref.watch(selectedCardProvider);
    final selectedCardNotifier = ref.read(selectedCardProvider.notifier);
    final selectedGiftAmount = ref.watch(selectedGiftAmountProvider);

    return Container(
      height: 100.h,
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
              icon: const Icon(Icons.arrow_forward_sharp)
            ),
          ],
        ),
        error: (e, s) => Center(child: AppText.medium("Card not found: $e")),
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
      height: size.height * 0.4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 10),
          AppText.medium("Select Amount", fontSize: 16),
          SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                ...[500, 10000, 20000, 50000, 100000, 200000].map(
                  (value) {
                    return CustomChips(
                      label: '\Tsh$value',
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
            backgroundColor: isAmountSelected ? Colors.black87 : Colors.grey,
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
