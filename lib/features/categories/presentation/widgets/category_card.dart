import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zawadi/core/styles/app_colors.dart';

import '../../../../core/styles/animations.dart';
import '../../../../core/utils/router_utils.dart';
import '../../data/model/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).goNamed(
                APP_PAGE.category.routeName,
                pathParameters: {
                  'title': category.name,
                  'categoryId': category.id.toString()
                },
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: AnimatedContainer(
              duration: AppAnimation.kAnimationDuration,
              curve: AppAnimation.kAnimationCurve,
              width: 110.w,
              height: 110.h,
              color: themeLightGreyColor,
              child: Stack(
                children: [
                  // Image Widget
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50, right: 20, left: 30, top: 10),
                    child: Image.asset(
                      'assets/images/categories/${category.icon}',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AnimatedContainer(
                      duration: AppAnimation.kAnimationDuration,
                      curve: AppAnimation.kAnimationCurve,
                      width: double.infinity,
                      height: 37.h,
                      color: const Color(0xff525252),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Center(
                          child: Text(
                            category.name,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'QrooFont',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}