import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zawadi/global/error_handler.dart';

import '../../models/issuers_model.dart';
import '../../pages/vouchers/carddesign/providers/filtered_cards_provider.dart';
import '../../pages/vouchers/carddesign/providers/selected_card_provider.dart';
import '../../pages/vouchers/carddesign/utilities/app_text.dart';
import 'issuer_vertical_card.dart';

class IssuerVerticalCardGrid extends ConsumerWidget {
  const IssuerVerticalCardGrid({Key? key, required this.issuersList}) : super(key: key);

  final List<IssuersModel> issuersList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cards = ref.watch(filteredCardsProvider);
    ref.watch(selectedCardIdProvider);

    return cards.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (cards) => SingleChildScrollView(
        child: issuersList.isEmpty
            ? const Center( child: CircularProgressIndicator() )
            : Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: issuersList.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 220.h,
                    child: IssuerVerticalCard(issuer: issuersList[index]),
                  );
                },
              ),
            ),
            // Separator
            SizedBox(height: 20.h),
          ],
        ),
      ),
      error: (e, s) {
        handleError(e, s.toString());
        return Center(child: AppText.medium('Failed to fetch gift vouchers'));
        },

    );
  }
}