import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/issuer_category_model.dart';
import '../styles/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final IssuerCategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (c) {

            return ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Container(
                width: 110.w,
                height: 110.h,
                color: kGrayC,
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
                      child: Container(
                        width: double.infinity,
                        height: 37.h,
                        color: const Color(0xff525252),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            category.name,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'OpenSans',
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }));
        },
      ),
      ],
    );
  }
}