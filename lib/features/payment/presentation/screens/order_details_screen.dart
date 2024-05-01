import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zawadi/core/presentation/widgets/app_bar_widget.dart';

import '../../../../models/voucher_model.dart';
import '../../../../pages/vouchers/carddesign/providers/selected_card_provider.dart';
import '../../../../pages/vouchers/carddesign/widgets/custom_gift_card.dart';
import '../../../gift_cards/provider/temporary_giftcard_provider.dart';
import '../../data/model/order_items_model.dart';
import '../widgets/order_details_widget.dart';

class OrderDetailsScreen extends ConsumerStatefulWidget {
  final GiftcardThemeModel model;
  const OrderDetailsScreen({super.key, required this.model});

  @override
  ConsumerState<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends ConsumerState<OrderDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final selectedCard = ref.watch(selectedCardProvider);
    final temporaryGiftcard = ref.watch(temporaryGiftcardProvider);



    return Scaffold(
      appBar: const QrooAppBar(hasBackButton: true),
      bottomSheet: OrderDetailsBox(items: orderItems,),
      body: Container(
        // Set height to 50% of the screen height
        //TODO: find a better way to do this
        height: size.height * 0.5,
        color: selectedCard.value?.bgColor,
        padding: const EdgeInsets.all(20.0),
        child: Container(
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