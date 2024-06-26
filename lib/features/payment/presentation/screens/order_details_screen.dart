import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zawadi/core/presentation/widgets/app_bar_widget.dart';
import 'package:zawadi/core/styles/app_colors.dart';

import '../../../../core/styles/animations.dart';
import '../../../gift_cards/data/model/giftcard_theme_model.dart';
import '../../../gift_cards/presentation/widgets/custom_gift_card.dart';
import '../../../gift_cards/provider/selected_card_provider.dart';
import '../../../gift_cards/provider/temporary_giftcard_provider.dart';
import '../widgets/order_details_widget.dart';

class OrderDetailsScreen extends ConsumerStatefulWidget {
  final GiftcardThemeModel model;
  const OrderDetailsScreen({super.key, required this.model});

  @override
  ConsumerState<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends ConsumerState<OrderDetailsScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final selectedCard = ref.watch(selectedCardProvider);
    final temporaryGiftcard = ref.watch(temporaryGiftcardProvider);

    return Scaffold(
      appBar: const QrooAppBar(hasBackButton: true),
      bottomSheet: const OrderDetailsWidget(),
      body: AnimatedContainer(
        duration: AppAnimation.kAnimationDuration,
        curve: AppAnimation.kAnimationCurve,
        // Set height to 50% of the screen height
        //TODO: find a better way to do this
        height: size.height * 0.6,
        color: selectedCard.value?.bgColor,
        padding: const EdgeInsets.all(20.0),
        child: AnimatedContainer(
          duration: AppAnimation.kAnimationDuration,
          curve: AppAnimation.kAnimationCurve,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: themeAlmostBlackColor,
                blurRadius: 5.0,
                spreadRadius: 2,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: CustomGiftCard(
            model: widget.model,
            width: size.width,
            title: temporaryGiftcard!.title,
            message: temporaryGiftcard.message,
            amount: temporaryGiftcard.amount,
            showLabel: false,
            showValue: true,
          ),
        ),
      ),
    );
  }
}