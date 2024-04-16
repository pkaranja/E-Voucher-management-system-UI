import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zawadi/models/issuers_model.dart';

import '../styles/app_colors.dart';

class IssuerHorizontalCard extends StatelessWidget {
  const IssuerHorizontalCard({
    Key? key, // Fix super.key to Key? key
    required this.issuer,
  }) : super(key: key);

  final IssuersModel issuer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Container(
            width: 244.w,
            height: 165.h,
            color: kGrayC,
            child: Stack(
              children: [
                // Image from URL with error and loading builders
                Image.network(
                  issuer.logo,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      // Show a preloader while the image is loading
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                  errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                    // Show a temporary image or an alternative widget when the image fails to load
                    return Container(
                      color: Colors.grey, // Temporary background color
                      child: const Icon(
                        Icons.image_not_supported,
                        color: Colors.white, // Temporary icon color
                        size: 64.0,
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 15.w, bottom: 12.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          issuer.name,
                          maxLines: 1,
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.edit_location),
                            SizedBox(width: 4.w),
                            Text(
                              issuer.address!,
                              maxLines: 1,
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }



}





