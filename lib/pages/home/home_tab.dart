import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/apiRequests.dart';
import '../../global/handlers/error_handler.dart';
import '../../global/router_utils.dart';
import '../../global/widgets/app_bar.dart';
import '../../global/widgets/category_card.dart';
import '../../global/widgets/issuer_horizontal_card.dart';
import '../../global/widgets/issuer_vertical_card_grid.dart';
import '../../global/widgets/search_bar.dart';
import '../../models/issuer_category_model.dart';
import '../../models/issuers_model.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  List<IssuersModel> issuersExplore = [];
  List<IssuersModel> popularIssuers = [];
  List<IssuerCategoryModel> issuerCategories = [];

  String selectedCategory = 'Featured';
  final ApiRequests apiRequests = ApiRequests();

  @override
  void initState() {
    super.initState();

    _fetchCategories();
    _fetchPopularIssuers();
    _fetchIssuers();
  }


  Future<void> _fetchPopularIssuers() async {
    try {
      var popularIssuersResponseData = await apiRequests.fetchIssuers();
      setState(() {
        popularIssuers.clear();
        final int numberOfElements = popularIssuersResponseData['numberOfElements'];
        final int pageNumber = popularIssuersResponseData['pageable']['pageNumber'];
        final int pageSize = popularIssuersResponseData['pageable']['pageSize'];
        final List<dynamic> issuers = popularIssuersResponseData['content'];

        popularIssuers.addAll(
            issuers.map((issuer) => IssuersModel.fromJson(issuer)));
      });
    } catch (error, stackTrace) {
      handleError(
          error, "Could not fetch popular issuers", stackTrace: stackTrace);
    }
  }

  Future<void> _fetchIssuers() async {
    try {
      var issuersResponseData = await apiRequests.fetchIssuers();
      setState(() {
        issuersExplore.clear();
        final int numberOfElements = issuersResponseData['numberOfElements'];
        final int pageNumber = issuersResponseData['pageable']['pageNumber'];
        final int pageSize = issuersResponseData['pageable']['pageSize'];
        final List<dynamic> issuers = issuersResponseData['content'];

        issuersExplore.addAll(
            issuers.map((issuer) => IssuersModel.fromJson(issuer)));
      });
    } catch (error, stackTrace) {
      handleError(error, "Could not fetch explore issuers data",
          stackTrace: stackTrace);
    }
  }

  Future<void> _fetchCategories() async {
    try {
      var categoryResponseData = await apiRequests.fetchCategories();
      setState(() {
        issuerCategories.clear();
        final activeCategories = categoryResponseData.where((
            category) => category['status'] == 'ACTIVE');
        issuerCategories.addAll(activeCategories.map((category) =>
            IssuerCategoryModel.fromJson(category)));
      });
    } catch (error) {
      handleError(error, "Could not fetch categories");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: const QrooAppBar(
          title1: 'Zawadi',
          title2: ' Digital',
          hasBackButton: false
      ),
      body: ListView(
        children: <Widget>[
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Text(
              "Spread happiness, \nGift a loved one today!",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomSearchBar(),
          ),

          SizedBox(height: 10.h),

          _HomePageWidget(issuerCategories, popularIssuers, issuersExplore),
        ],
      ),
    );
  }
}




class _HomePageWidget extends ConsumerWidget {
  const _HomePageWidget( this.issuerCategories, this.popularIssuers, this.exploreIssuers, {Key? key}) : super(key: key);

  final List<IssuerCategoryModel> issuerCategories;
  final List<IssuersModel> popularIssuers;
  final List<IssuersModel> exploreIssuers;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

          SizedBox(
            height: 120.h,
            child: issuerCategories.isEmpty
                ? Center(
                  child: SpinKitSpinningLines(
                    color: Theme.of(context).hintColor,
                    size: 40.h,
                    ),
                  ) // Show loading indicator if data is not fetched yet
                : ListView.separated(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: issuerCategories.length,
                itemBuilder: (context, index) {
                  final category = issuerCategories[index];
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
                    child: Text(
                      "view all",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  )
                ],
              ),
            ],
          ),

          SizedBox(height: 10.h),

          SizedBox(
            height: 165.h,
            child: popularIssuers.isEmpty
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

          IssuerVerticalCardGrid(issuersList: exploreIssuers),

        //End Explore
      ]
    ));
  }
}