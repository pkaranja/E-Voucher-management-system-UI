import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:zawadi/features/issuers/presentation/widgets/vertical_card.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/presentation/widgets/app_bar_widget.dart';
import '../../data/model/issuer_model.dart';
import '../../provider/issuer_provider.dart';

class IssuersListScreen extends ConsumerStatefulWidget {
  const IssuersListScreen({Key? key, this.title, required this.issuerListType, this.q, this.categoryId}) : super(key: key);

  final String? title;
  final IssuerListType issuerListType;
  final String? q;
  final int? categoryId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IssuersListScreenState();
}

class _IssuersListScreenState extends ConsumerState<IssuersListScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    //TODO: fetch depending on list type, pass categoryId if necessary
    Future.microtask(() { ref.read(issuerProvider.notifier).getAll(); });
  }



  @override
  Widget build(BuildContext context) {
    final issuers = ref.watch(issuerProvider).issuers;
    bool isLoading = ref.watch(issuerProvider).isLoading;

    return Scaffold(
      appBar: const QrooAppBar( hasBackButton: true ),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Text(
              widget.title ?? 'Issuers',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),

          Wrap(
            children: [
              IssuersListWidget(ref: ref, isLoading: isLoading, issuers: issuers),
            ],
          ),
        ],
      ),
    );
  }
}

class IssuersListWidget extends StatelessWidget {
  const IssuersListWidget({
    super.key,
    required this.ref,
    required this.isLoading,
    required this.issuers,
  });

  final WidgetRef ref;
  final bool isLoading;
  final List<IssuerModel> issuers;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => ref.read(issuerProvider.notifier).getAll(),
      child: isLoading
        ? Center(  child: SpinKitSpinningLines( color: Theme.of(context).hintColor, size: 40.h, ), )
        : ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: issuers.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: IssuersVerticalCard(issuer: issuers[index]),
                  ),
                  SizedBox(height: 20.h), // Add space between items
                ],
              );
            },
          ),
        );
      }
}