import 'dart:convert';
import 'dart:developer';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/apiRequests.dart';
import '../../global/router_utils.dart';
import '../../global/widgets/app_bar.dart';
import '../../global/widgets/category_card.dart';
import '../../global/widgets/issuer_horizontal_card.dart';
import '../../global/widgets/search_bar.dart';
import '../../models/issuer_category_model.dart';
import '../../models/issuers_model.dart';
import '../vouchers/carddesign/providers/filtered_cards_provider.dart';
import '../vouchers/carddesign/providers/selected_card_provider.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  List<IssuersModel> issuers = [];
  List<IssuersModel> popularIssuers = [];
  List<IssuerCategoryModel> issuerCategories = [];

  int _pageNumber = 1;
  final int _pageSize = 10;

  String selectedCategory = 'Featured';
  final ApiRequests apiRequests = ApiRequests();

  @override
  void initState() {
    super.initState();
    _fetchCategories();
    _fetchPopularIssuers();
  }

  Future<void> _fetchPopularIssuers() async {
    try {
      var popularIssuersResponseData = await apiRequests.fetchIssuers(page: _pageNumber, pageSize: _pageSize, filter: "popular");
      setState(() {
        popularIssuers.clear();
        final activePopularIssuers = popularIssuersResponseData.where((issuer) => issuer['status'] == 'ACTIVE');
        popularIssuers.addAll(activePopularIssuers.map((issuer) => IssuersModel.fromJson(issuer)));
      });
    } catch (error, stackTrace) {
      _handleError(error, "Could not fetch popular issuers", stackTrace: stackTrace);
    }
  }

  Future<void> _fetchCategories() async {
    try {
      var categoryResponseData = await apiRequests.fetchCategories();
      setState(() {
        issuerCategories.clear();
        final activeCategories = categoryResponseData.where((category) => category['status'] == 'ACTIVE');
        issuerCategories.addAll(activeCategories.map((category) => IssuerCategoryModel.fromJson(category)));
      });
    } catch (error) {
      _handleError(error, "Could not fetch categories");
    }
  }


  Future<void> _fetchIssuersPaginated() async {
    try {
      var fetchIssuersResponseData = await apiRequests.fetchIssuers(page: _pageNumber, pageSize: _pageSize);
      setState(() {
        final activeIssuers = fetchIssuersResponseData.where((issuer) => issuer['status'] == 'ACTIVE');
        issuers.addAll(activeIssuers.map((issuer) => IssuersModel.fromJson(issuer)));
      });
    } catch (error, stackTrace) {
      _handleError(error, "Could not fetch issuers", stackTrace: stackTrace);
    }
  }

  void _loadMoreData() {
    _pageNumber++;
    _fetchIssuersPaginated();
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
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomSearchBar(),
            ),

            SizedBox(height: 10.h),

            _HomePageWidget(issuerCategories, popularIssuers, ),
          ],
      ),
    );
  }
}


class _HomePageWidget extends ConsumerWidget {
  const _HomePageWidget( this.issuerCategories, this.popularIssuers, {Key? key}) : super(key: key);

  final List<IssuerCategoryModel> issuerCategories;
  final List<IssuersModel> popularIssuers;

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
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    fontStyle: FontStyle.normal
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
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
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
              padding: EdgeInsets.only(left: 20.w),
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
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.w),
            ],
          ),


          Container(
            height: 240.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF0D921B),
                  Color(0xFFAC2E82),
                ],
              ),
            ),
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 240.h,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10, bottom: 60.h),
                    child: Image.asset(
                      'assets/images/gift_box.png',
                      fit: BoxFit.contain,
                      colorBlendMode: BlendMode.dstATop,
                      width: 120.h,
                    ),
                  ),
                  ContainerWithCircle(),
                ],
              ),
            ),
          ),

          SizedBox(height: 15.h),

          Container(
            height: 240.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF000000),
                  Color(0xFFFFFFFF),
                ],
              ),
            ),
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 240.h,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10, bottom: 60.h),
                    child: Image.asset(
                      'assets/images/gift_box.png',
                      fit: BoxFit.contain,
                      colorBlendMode: BlendMode.dstATop,
                      width: 120.h,
                    ),
                  ),
                  ContainerWithCircle2(),
                ],
              ),
            ),
          ),

          SizedBox(height: 15.h),

          Container(
            height: 240.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF7F340A),
                  Color(0xFFFFFFFF),
                ],
              ),
            ),
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 240.h,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10, bottom: 60.h),
                    child: Image.asset(
                      'assets/images/gift_box.png',
                      fit: BoxFit.contain,
                      colorBlendMode: BlendMode.dstATop,
                      width: 120.h,
                    ),
                  ),
                  ContainerWithCircle3(),
                ],
              ),
            ),
          ),

          SizedBox(height: 15.h),

          Container(
              height: 240.h,
              decoration: ShapeDecoration(
                color: const Color(0xFFC4C4C4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 20.h),
              child: GestureDetector(
                onTap: () {
                  ref
                      .read(selectedCardIdProvider.notifier)
                      .setSelectedCardId(1);

                  GoRouter.of(context).goNamed(
                      APP_PAGE.issuer.routeName,
                      pathParameters: {'issuerId': 'df137d12-e9c6-46a6-b819-a5b201d3ba18'}
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 38.h,
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Buy now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF262626),
                      fontSize: 14,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15.w),
    //End Explore
      ]
    ));
  }
}





Future<void> _handleError(dynamic error, String reason, {StackTrace? stackTrace}) async {
  // Explicitly cast the error object to Error type to access its stack trace
  if (error is Error) {
    await FirebaseCrashlytics.instance.recordError(
      error.toString(),
      stackTrace ?? error.stackTrace, // Use error.stackTrace if stackTrace is null
      reason: reason,
    );
  } else {
    // If error is not of type Error, handle it accordingly
    String stackTraceString = stackTrace?.toString() ?? '';

    await FirebaseCrashlytics.instance.recordError(
      error.toString(),
      stackTraceString.isNotEmpty ? StackTrace.fromString(stackTraceString) : null,
      reason: reason,
    );
  }
}












class ContainerWithCircle extends StatelessWidget {
  final double circleRadius = 80.0;
  final double circleBorderWidth = 3.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
      Padding(
          padding: EdgeInsets.only(top: circleRadius / 2.0),
          child: Container(
            height: 60.h,
            decoration: const ShapeDecoration(
              color: Color(0xFFC4C4C4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
            ),
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: ElevatedButton(
              onPressed: () {
                GoRouter.of(context).goNamed(
                  APP_PAGE.issuer.routeName,
                  pathParameters: {'issuerId': 'df137d12-e9c6-46a6-b819-a5b201d3ba18'}
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.0),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_cart), // Add cart icon
                  SizedBox(width: 2.0), // Add space between icon and text
                  Text(
                      'Buy voucher',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 14,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Container(
            width: circleRadius,
            height: circleRadius,
            decoration: const ShapeDecoration( shape: CircleBorder(), color: Colors.white ),
            child: Padding(
              padding: EdgeInsets.all(circleBorderWidth),
              child: const DecoratedBox(
                decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://scontent.fdar10-1.fna.fbcdn.net/v/t39.30808-6/326477840_920176965661402_8423363002638498982_n.png?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=ze1HNW1bv7MAb5gt0qC&_nc_ht=scontent.fdar10-1.fna&oh=00_AfD0b4h0FEFlpInVKF-EFZ3YGLZXXML7fvXVU8FzSM38_g&oe=66153A05',
                        ),
                      ),
                    ),
                  ),
                ),
              ),

        ),
      ],
    );
  }
}




class ContainerWithCircle2 extends StatelessWidget {
  final double circleRadius = 80.0;
  final double circleBorderWidth = 3.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: circleRadius / 2.0),
          child: Container(
            height: 100.h,
            decoration: const ShapeDecoration(
              color: Color(0xFFC4C4C4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
            ),
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 20.h),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).goNamed(
                    APP_PAGE.issuer.routeName,
                    pathParameters: {'issuerId': 'df137d12-e9c6-46a6-b819-a5b201d3ba18'}
                );
              },
              child: Container(
                //width: ,
                height: 35.h,
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Buy now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF262626),
                    fontSize: 14,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Container(
            width: circleRadius,
            height: circleRadius,
            decoration: const ShapeDecoration( shape: CircleBorder(), color: Colors.white ),
            child: Padding(
              padding: EdgeInsets.all(circleBorderWidth),
              child: const DecoratedBox(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/prints/orcadeco.jpg'),
                  ),
                ),
              ),
            ),
          ),

        ),
      ],
    );
  }
}


class ContainerWithCircle3 extends StatelessWidget {
  final double circleRadius = 80.0;
  final double circleBorderWidth = 3.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: circleRadius / 2.0),
          child: Container(
            height: 100.h,
            decoration: const ShapeDecoration(
              color: Color(0xFFC4C4C4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
            ),
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 20.h),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).goNamed(
                    APP_PAGE.issuer.routeName,
                    pathParameters: {'issuerId': 'df137d12-e9c6-46a6-b819-a5b201d3ba18'}
                );
              },
              child: Container(
                //width: ,
                height: 35.h,
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Buy now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF262626),
                    fontSize: 14,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Container(
            width: circleRadius,
            height: circleRadius,
            decoration: const ShapeDecoration( shape: CircleBorder(), color: Colors.white ),
            child: Padding(
              padding: EdgeInsets.all(circleBorderWidth),
              child: const DecoratedBox(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/prints/samaki.jpg'),
                  ),
                ),
              ),
            ),
          ),

        ),
      ],
    );
  }
}