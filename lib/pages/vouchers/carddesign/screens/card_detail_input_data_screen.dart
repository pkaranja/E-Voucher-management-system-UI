import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zawadi/global/widgets/app_bar.dart';
import 'package:zawadi/global/widgets/payment_form.dart';
import '../../../../global/styles/app_colors.dart';
import '../models/card_model.dart';
import '../utilities/app_text.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_gift_card.dart';
import 'card_detail_purchased_screen.dart';

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
                height: size.height * 0.25,
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
                  //_buildTextFormField('Message', 'message', maxLines: 4),
                  //const SizedBox(height: 10),
                  PaymentFormWidget(initialContext: context, amount: giftValue,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column _buildTextFormField(String label, String hintText, {int? maxLines}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.medium(
          label,
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 10.0),
        TextFormField(
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: primaryColor,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.all(20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none,
            ),
          ),
          maxLines: maxLines ?? 1,
        ),
      ],
    );
  }
}
