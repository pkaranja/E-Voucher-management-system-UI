import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zawadi/features/categories/provider/category_provider.dart';
import '../../core/presentation/widgets/app_bar_widget.dart';
import '../../core/utils/router_utils.dart';
import '../../features/issuers/provider/issuer_provider.dart';
import '../../features/categories/presentation/widgets/category_card.dart';
import '../../features/issuers/presentation/widgets/issuer_horizontal_card.dart';
import '../../features/issuers/presentation/widgets/issuer_vertical_card.dart';

class HomeTab extends ConsumerStatefulWidget {
  const HomeTab({super.key});

  @override
  ConsumerState<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends ConsumerState<HomeTab> {

  String selectedCategory = 'Featured';
  bool categoriesLoading = true;
  bool popularIssuersLoading = true;
  bool issuersLoading = true;

  @override
  void initState() {
    super.initState();

    Future.microtask(() { ref.read(categoryProvider.notifier).getAll(); });
    Future.microtask(() { ref.read(issuerProvider.notifier).getPopular(); });
    Future.microtask(() { ref.read(issuerProvider.notifier).getAll(); });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: const QrooAppBar(),

      body: ListView(
        children: <Widget>[
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Text(
              "Spread happiness, \nGift a loved one today!",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),

          //TODO: Implement search
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: CustomSearchBar(),
          // ),

          SizedBox(height: 10.h),

          const _HomePageWidget(),
        ],
      ),
    );
  }
}




class _HomePageWidget extends ConsumerWidget {
  const _HomePageWidget( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoryProvider).categories;
    bool categoriesLoading = ref.watch(categoryProvider).isLoading;

    final popularIssuers = ref.watch(issuerProvider).issuers;
    bool popularIssuersLoading = ref.watch(issuerProvider).isLoading;

    final issuers = ref.watch(issuerProvider).issuers;
    bool issuersLoading = ref.watch(issuerProvider).isLoading;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),

          SizedBox(height: 10.h),

        //DIO Implementation
        SizedBox(
          height: 120.h,
          child: categoriesLoading
            ? Center(
              child: SpinKitSpinningLines(
                color: Theme.of(context).hintColor,
                size: 40.h,
                ),
              ) // Show loading indicator if data is not fetched yet
            : ListView.separated(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return CategoryCard(category: category);
                },
                separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 15.w,
                );
              },
            ),
          ),
          //End Categories

          SizedBox(height: 30.h),

          //Popular
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).goNamed(
                          APP_PAGE.issuers.routeName,
                          pathParameters: {'title': 'Popular issuers'}
                      );
                    },
                    child: Text( "view all", style: Theme.of(context).textTheme.bodySmall, ),
                  )
                ],
              ),
            ],
          ),

          SizedBox(height: 10.h),

          //Dio Implementation
           SizedBox(
            height: 165.h,
            child: popularIssuersLoading
              ? Center(
                  child: SpinKitSpinningLines(
                    color: Theme.of(context).hintColor,
                    size: 40.h,
                  ),
                )
              : ListView.separated(
                padding: EdgeInsets.only(left: 0.w),
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: popularIssuers.length,
                itemBuilder: (context, index) {
                  final issuer = popularIssuers[index];
                  return IssuerHorizontalCard(issuer: issuer);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 15.w,
                  );
                },
              ),
            ),
          //End Popular

          SizedBox(height: 30.h),

          //Explore
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              //SizedBox(height: 15.w),
            ],
          ),

          SizedBox(height: 10.h),


          SingleChildScrollView(
            child: issuersLoading
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
                  itemCount: issuers.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        IssuerVerticalCard(issuer: issuers[index]),
                        SizedBox(height: 20.h), // Add space between items
                      ],
                    );
                  },
                ),
              ],
            ),
          )

        //End Explore
      ]
    ));
  }
}