import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../core/handlers/error_handler.dart';
import '../../../gift_cards/provider/filtered_cards_provider.dart';
import '../../../gift_cards/provider/selected_card_provider.dart';
import '../../data/model/issuer_model.dart';
import 'issuer_vertical_card.dart';


class IssuerVerticalCardGrid extends ConsumerWidget {
  const IssuerVerticalCardGrid({Key? key, required this.issuersList}) : super(key: key);

  final List<IssuerModel> issuersList;

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
        return Center(
            child: Text(
              'Failed to load gift cards', style: Theme.of(context).textTheme.bodyLarge,
            )
        );
      },
    );
  }
}