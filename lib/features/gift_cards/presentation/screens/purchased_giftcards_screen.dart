
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:zawadi/features/gift_cards/data/model/giftcard_model.dart';
import 'package:zawadi/features/gift_cards/provider/giftcard_provider.dart';
import '../../../../core/presentation/widgets/app_bar_widget.dart';
import '../../repository/giftcard_repository_impl.dart';

class PurchasedGiftcardsScreeen extends ConsumerStatefulWidget {
  const PurchasedGiftcardsScreeen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PurchasedGiftcardsScreeenState();
}

class _PurchasedGiftcardsScreeenState extends ConsumerState<PurchasedGiftcardsScreeen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(giftcardProvider.notifier).getAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    final giftcards = ref.watch(giftcardProvider).giftcards;
    bool isLoading = ref.watch(giftcardProvider).isLoading;

    return Scaffold(
      appBar: const QrooAppBar(),
      body: Wrap(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Purchased gift cards',
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
          title: Text("Delete giftcard"),
          content: const Text("Would you like to delete giftcard permanently?"),
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
                  showSnackbar(context, "Success! Deleted giftcard");
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  ref.read(giftcardProvider.notifier).getAll();
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
    return RefreshIndicator(
      onRefresh: () => ref.read(giftcardProvider.notifier).getAll(),
      child: isLoading
          ? const Center(
            child: CircularProgressIndicator(),
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
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {

              },
              child: Card(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: new BoxDecoration(
                        border: new Border(
                            right: new BorderSide(width: 1.0, color: Colors.white24))),
                    child: Icon(Icons.autorenew, color: Colors.white),
                  ),
                  title: Text(
                    'Peter Karanja',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Row(
                          children: [
                              Text("Tsh 50, 000 @", style: TextStyle(color: Colors.white)),
                              Text("Shoppers supermarket", style: TextStyle(color: Colors.white))
                              ]
                      ),
                    ],
                  ),
                  trailing:
                  Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
                  onTap: () {},
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
