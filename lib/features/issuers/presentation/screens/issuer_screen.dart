import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:string_validator/string_validator.dart';
import 'package:zawadi/features/gift_cards/provider/temporary_giftcard_provider.dart';
import '../../../../core/presentation/widgets/app_bar_widget.dart';
import '../../../../widgets/error_message_widget.dart';
import '../../../../pages/vouchers/carddesign/providers/selected_card_provider.dart';
import '../../../../pages/vouchers/carddesign/widgets/custom_gift_card.dart';
import '../../../gift_cards/presentation/widgets/giftcard_details_form.dart';

class IssuerScreen extends ConsumerWidget {
  const IssuerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCard = ref.watch(selectedCardProvider);
    final temporaryGiftCard = ref.watch(temporaryGiftcardProvider);

    // Get the card id and issuer id
    final issuerId = temporaryGiftCard!.issuerId;

    if (kDebugMode) {
      print("Initial value: $temporaryGiftCard");
    }

    return Scaffold(
      appBar: const QrooAppBar(hasBackButton: true),
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
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: _SelectedCard(backgroundColor: selectedCard.value?.bgColor, fontColor: selectedCard.value?.fontColor),
              ),
              Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  child: GiftCardDetailsWidget(model: selectedCard.value, issuerId: temporaryGiftCard.issuerId),
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
    final selectedCardTheme = ref.watch(selectedCardProvider);
    final selectedCardNotifier = ref.read(selectedCardProvider.notifier);
    final temporaryGiftcard = ref.watch( temporaryGiftcardProvider );

    return Container(
      color: backgroundColor,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: selectedCardTheme.when(
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
                  title: temporaryGiftcard!.title,
                  message: temporaryGiftcard.message,
                  amount: temporaryGiftcard.amount,
                  showLabel: false,
                  showValue: true,
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
