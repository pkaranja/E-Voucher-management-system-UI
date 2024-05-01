import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zawadi/global/styles/app_colors.dart';

import '../../../../core/utils/utils.dart';
import '../../../../models/voucher_model.dart';

class CustomGiftCard extends StatelessWidget {
  final GiftcardThemeModel model;
  final double? width;
  final double? height;
  final int? amount;
  final bool showLabel;
  final bool showValue;
  final String title;
  final String message;

  const CustomGiftCard({
    Key? key,
    required this.model,
    this.width,
    this.height,
    this.amount,
    this.showLabel = true,
    this.showValue = false,
    required this.title,
    required this.message
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Image.asset(
                model.thumbnailPath,
                width: width ?? 300.w,
                height: height,
                fit: BoxFit.cover,
              ),
            ),
            if (showLabel) ...[
              const SizedBox(height: 8),
              Text(
                  model.name,
                  style: Theme.of(context).textTheme.titleSmall
              ),
            ]
          ],
        ),

        //Issuer's logo
        Positioned(
          right: 10.w,
          top: 10.h,
          child: Image.network(
            height: 25.h,
            //'https://bongogadgets.com/wp-content/uploads/2020/11/bongogadgets-logo-237x60-1.png',
            'https://play-lh.googleusercontent.com/pN_Fokt8GcVotxPp2i9FDA18yTO92EjaApdCOZ7vKyB9xfG5ebYCqr3EqQE9pVan8D8=w480-h960',
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                      : null,
                );
              }
            },
          ),
        ),

        //Card title
        Positioned.fill(
            bottom: 210.h,
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: model.fontColor,
                  fontFamily: 'Parisienne',
                )
              )
            )
        ),

        //Card message
        Positioned.fill(
          bottom: 100.h,
          child: Center(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(vertical: 10.h, horizontal: 20.w),
              child: Text(
                message,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: model.fontColor,
                  fontFamily: 'QrooFont',
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 5, // Adjust the number of lines according to your UI requirements
              ),
            ),
          ),
        ),

        if (showValue)
          Positioned(
            right: 10.w,
            bottom: 0,
            child: Text(
              Utils.formatMoney(amount!),
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: model.fontColor,
                fontFamily: 'Frunchy'
              )
            )
          ),

        if (showValue)
            Positioned(
              left: 10.w,
              bottom: 10.h,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 20.w,
                    height: 20.w,
                  ),
                  Text(
                    ' Powered by Zawadi \u00A9',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: themePrimaryColor,
                      fontFamily: 'Blueberry'
                    )
                  ),
                ]
              )
          ),
      ],
    );
  }
}
