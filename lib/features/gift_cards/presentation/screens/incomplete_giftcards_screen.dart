import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:zawadi/features/gift_cards/data/model/giftcard_model.dart';
import 'package:zawadi/features/gift_cards/data/model/temporary_card_model.dart';
import '../../../../core/presentation/widgets/app_bar_widget.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../../core/utils/router_utils.dart';
import '../../../../core/utils/utils.dart';
import '../../provider/giftcard_provider.dart';
import '../../provider/selected_card_provider.dart';
import '../../provider/temporary_giftcard_provider.dart';
import '../../repository/giftcard_repository_impl.dart';

class IncompleteGiftcardsScreeen extends ConsumerStatefulWidget {
  const IncompleteGiftcardsScreeen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IncompleteGiftcardsScreeenState();
}

class _IncompleteGiftcardsScreeenState extends ConsumerState<IncompleteGiftcardsScreeen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() { ref.read(giftcardProvider.notifier).getPurchased(); });
  }

  @override
  Widget build(BuildContext context) {
    final giftcards = ref.watch(giftcardProvider).giftcards;
    bool isLoading = ref.watch(giftcardProvider).isLoading;

    ref.watch(selectedCardProvider);
    ref.watch(selectedCardIdProvider);

    return Scaffold(
      appBar: const QrooAppBar(hasBackButton: true,),
      body: Wrap(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Cart',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: GiftcardsListWidget(ref: ref, isLoading: isLoading, giftcards: giftcards),
          ),
        ],
      ),
    );
  }
}

class GiftcardsListWidget extends StatelessWidget {

  const GiftcardsListWidget({
    super.key,
    required this.ref,
    required this.isLoading,
    required this.giftcards,
  });

  final WidgetRef ref;
  final bool isLoading;
  final List<GiftcardModel> giftcards;

  void deleteItem(BuildContext context, GiftcardModel giftcard) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Delete gift card"),
          content: const Text("Would you like to delete gift card permanently?"),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Yes"),
              onPressed: () {
                ref
                    .read(giftcardRepositoryProvider)
                    .deleteOne(id: giftcard.id.toString())
                    .then((value) {
                  showSnackbar(context, "Success! Gift card deleted");
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  ref.read(giftcardProvider.notifier).getPurchased();
                });
              },
            ),
          ],
        );
      },
    );
  }

  void showSnackbar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    ref.watch( temporaryGiftcardProvider );

    return RefreshIndicator(
      onRefresh: () => ref.read(giftcardProvider.notifier).getPurchased(),
      child: isLoading
          ? Center(
              child: SpinKitSpinningLines(
                color: Theme.of(context).hintColor,
                size: 40.h,
              ),
            )
        : ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return Slidable(
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  flex: 1,
                  onPressed: (_) {
                    deleteItem(context, giftcards[index]);
                  },
                  backgroundColor: themeDangerColor,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                  print("NAVIGATE");
              },
              child: Card(
                color: themePrimaryColor,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    width: 80,
                    height: 80,
                    decoration: const ShapeDecoration( shape: CircleBorder(), color: Colors.white ),
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: DecoratedBox(
                        decoration: ShapeDecoration(
                          shape: const CircleBorder(),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider('https://play-lh.googleusercontent.com/pN_Fokt8GcVotxPp2i9FDA18yTO92EjaApdCOZ7vKyB9xfG5ebYCqr3EqQE9pVan8D8=w480-h960'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    'Peter Karanja',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text( Utils.formatMoney(giftcards[index].value), style: TextStyle(color: Colors.white)),
                        Text("Shoppers supermarket", style: TextStyle(color: Colors.white))
                      ]
                  ),
                  trailing:
                  Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
                  onTap: () {
                    SelectedCardModel giftcardDetails = SelectedCardModel(
                      themeId: giftcards[index].theme,
                      amount: giftcards[index].value,
                      title: giftcards[index].title,
                      message: giftcards[index].message,
                      issuerId: giftcards[index].issuer,
                      //recipient: giftcards[index].recipient,
                    );

                    ref.read(temporaryGiftcardProvider.notifier).setTemporaryGiftcard(giftcardDetails);
                    ref.read(selectedCardIdProvider.notifier).setSelectedCardId(giftcards[index].theme);

                    if (kDebugMode) {
                      print(giftcardDetails);
                    }

                    GoRouter.of(context).goNamed(
                        APP_PAGE.issuer.routeName,
                        pathParameters: {'issuerId': giftcards[index].issuer }
                    );
                  },
                ),
              ),
            ),
          );
        },
        itemCount: giftcards.length,
      ),
    );
  }
}
