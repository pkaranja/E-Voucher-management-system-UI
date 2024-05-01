import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zawadi/features/gift_cards/provider/temporary_giftcard_provider.dart';
import 'package:zawadi/global/widgets/payment_form.dart';
import '../../../../core/presentation/widgets/app_bar_widget.dart';
import '../../../../models/voucher_model.dart';
import '../providers/selected_card_provider.dart';
import '../widgets/custom_gift_card.dart';

class CardDetailInputScreen extends ConsumerWidget {
  final GiftcardThemeModel model;

  const CardDetailInputScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final selectedCard = ref.watch(selectedCardProvider);
    final temporaryGiftcard = ref.watch(temporaryGiftcardProvider);

    return Scaffold(
      appBar: const QrooAppBar(hasBackButton: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 9,
            child: Container(
              color: selectedCard.value?.bgColor,
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: size.height * 0.37,
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
                  model: model,
                  width: size.width,
                  title: temporaryGiftcard!.title,
                  message: temporaryGiftcard.message,
                  amount: temporaryGiftcard.amount,
                  showLabel: false,
                  showValue: true,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).hintColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    PaymentFormWidget(initialContext: context, amount: temporaryGiftcard.amount),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
