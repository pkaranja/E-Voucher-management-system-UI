import 'dart:convert';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zawadi/global/constants.dart';

import '../../controllers/apiRequests.dart';
import '../../global/handlers/error_handler.dart';
import '../../global/router_utils.dart';
import '../../global/widgets/app_bar.dart';
import '../../global/widgets/category_card.dart';
import '../../global/widgets/issuer_horizontal_card.dart';
import '../../global/widgets/issuer_vertical_card.dart';
import '../../global/widgets/issuer_vertical_card_grid.dart';
import '../../global/widgets/search_bar.dart';
import '../../models/issuer_category_model.dart';
import '../../models/issuers_model.dart';
import '../auth/verify_screen.dart';
import '../settings/update_profile.dart';
import '../vouchers/carddesign/providers/filtered_cards_provider.dart';
import '../vouchers/carddesign/providers/selected_card_provider.dart';

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
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Spread happiness, \nGift a loved one today!",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'QrooFont',
              ),
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
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'QrooFont'
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          SizedBox(
            height: 120.h,
            child: issuerCategories.isEmpty
                ? const Center( child: CircularProgressIndicator() ) // Show loading indicator if data is not fetched yet
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

          SizedBox(height: 27.h),

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
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'QrooFont'
                    ),
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
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),

          SizedBox(
            height: 165.h,
            child: popularIssuers.isEmpty
                ? const Center( child: CircularProgressIndicator() )
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

          SizedBox(height: 27.h),

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
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'QrooFont'
                    ),
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