import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:zawadi/global/handlers/error_handler.dart';

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
      loading: () => Center(
        child: SpinKitSpinningLines(
          color: Theme.of(context).hintColor,
          size: 40.h,
        ),
      ),
      data: (cards) => SingleChildScrollView(
        child: issuersList.isEmpty
            ? Center(
              child: SpinKitSpinningLines(
                color: Theme.of(context).hintColor,
                size: 40.h,
              ),
            )
            : Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: issuersList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        IssuerVerticalCard(issuer: issuersList[index]),
                        SizedBox(height: 20.h), // Add space between items
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        error: (e, s) {
        handleError(e, s.toString());
        return Center(child: AppText.medium('Failed to load gift vouchers'));
      },
    );
  }
}