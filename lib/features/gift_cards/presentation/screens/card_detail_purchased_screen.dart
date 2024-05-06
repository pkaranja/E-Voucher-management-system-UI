import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:zawadi/features/gift_cards/provider/temporary_giftcard_provider.dart';
import '../../../../core/presentation/widgets/app_bar_widget.dart';
import '../../../../core/styles/animations.dart';
import '../../provider/selected_card_provider.dart';
import '../widgets/custom_gift_card.dart';

class CardPurchasedScreen extends ConsumerWidget {
  const CardPurchasedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final selectedCardTheme = ref.watch(selectedCardProvider);
    final giftCardDetails = ref.watch(temporaryGiftcardProvider);

    return Scaffold(
      backgroundColor: selectedCardTheme.value?.bgColor,
      appBar: const QrooAppBar(hasBackButton: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: AnimatedContainer(
              duration: AppAnimation.kAnimationDuration,
              curve: AppAnimation.kAnimationCurve,
              height: size.height * 0.5,
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 20.0,
              ),
              child: selectedCardTheme.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                data: (card) => AnimatedContainer(
                  duration: AppAnimation.kAnimationDuration,
                  curve: AppAnimation.kAnimationCurve,
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
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
                    width: size.width - 50,
                    amount: giftCardDetails!.amount,
                    showValue: true,
                    showLabel: false, title: '', message: '',
                  ),
                ),
                error: (e, s) => Center(
                  child: Text("Card not found: $e"),
                ),
              ),
            ),
          ),
          _BottomSheet(
            giftAmount: giftCardDetails!.amount,
            height: size.height * 0.35,
          ),
        ],
      ),
    );
  }
}

class _BottomSheet extends ConsumerWidget {
  final double? height;
  final int giftAmount;

  const _BottomSheet({
    Key? key,
    required this.giftAmount,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const arcCount = 24;
    final size = MediaQuery.of(context).size;
    final uuid = const Uuid().v1().replaceAll('-', '').substring(0, 16);

    return Stack(
      children: [
        AnimatedContainer(
          duration: AppAnimation.kAnimationDuration,
          curve: AppAnimation.kAnimationCurve,
          color: Colors.white,
          width: double.infinity,
          height: height,
          margin: const EdgeInsets.only(top: 5.0),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Card Sent!"),
              const SizedBox(height: 10),
              Text("massimo@maxonflutter.com"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),
                  Text(
                    '\$$giftAmount',
                  ),
                ],
              ),
              const Divider(height: 30, thickness: 1),
              Text("Card Number $uuid"),
              const Spacer(),
              ElevatedButton(
                child: Text('Share This'),
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
