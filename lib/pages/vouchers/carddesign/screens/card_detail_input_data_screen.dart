import 'package:flutter/material.dart';
import 'package:zawadi/global/widgets/app_bar.dart';
import 'package:zawadi/global/widgets/payment_form.dart';
import '../../../../global/styles/app_colors.dart';
import '../../../../models/voucher_model.dart';
import '../utilities/app_text.dart';
import '../widgets/custom_gift_card.dart';

class CardDetailInputScreen extends StatelessWidget {
  final CardModel model;
  final int giftValue;

  const CardDetailInputScreen({
    Key? key,
    required this.model,
    required this.giftValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const QrooAppBar(
          title1: 'Zawadi',
          title2: ' Digital',
          hasBackButton: true
      ),
      body: SingleChildScrollView(
        //backgroundColor: selectedCard.value?.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
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
                child: CustomGiftCard(model: model, showLabel: false),
              ),
            ),
            AppText.title(
              '\$$giftValue',
              color: Colors.white,
              fontSize: 30,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  PaymentFormWidget(initialContext: context, amount: giftValue,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
