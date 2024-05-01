import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:zawadi/features/gift_cards/provider/temporary_giftcard_provider.dart';
import 'package:zawadi/core/utils/rgb_to_radix.dart';
import '../../../../core/utils/router_utils.dart';
import '../../data/model/issuer_model.dart';
import '../../../../pages/vouchers/carddesign/providers/selected_card_provider.dart';
import '../../../../global/styles/app_colors.dart';

class IssuerVerticalCard extends ConsumerWidget {

  const IssuerVerticalCard({
    Key? key,
    required this.issuer
  }) : super(key: key);

  final IssuerModel issuer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: 220.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [ parseColor(issuer.primaryColor), parseColor(issuer.secondaryColor) ],
          ),
        ),
        alignment: Alignment.bottomRight,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Text(
                issuer.name,
                style: TextStyle(
                  color: parseColor(issuer.secondaryFontColor),
                  fontSize: 18,
                  fontFamily: 'Halter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10, bottom: 40.h),
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.contain,
                      colorBlendMode: BlendMode.dstATop,
                      width: 100.w,
                    ),
                  ),
                  ContainerWithCircle(logo: issuer.logo, id: issuer.id, name: issuer.name  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}


class ContainerWithCircle extends ConsumerWidget {
  final String id;
  final String logo;
  final String name;
  final double circleRadius = 80.0;
  final double circleBorderWidth = 3.0;

  const ContainerWithCircle({super.key,
    required this.id,
    required this.logo,
    required this.name,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(temporaryGiftcardProvider);
    ref.watch(selectedCardIdProvider);

    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: circleRadius / 2.0),
          child: Container(
            height: 60.h,
            decoration: const ShapeDecoration(
              color: themeAlmostWhiteColor,
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
                ref.read(temporaryGiftcardProvider.notifier).setGiftcardIssuerId(id);
                ref.read(selectedCardIdProvider.notifier).setSelectedCardId(1);

                GoRouter.of(context).goNamed(
                    APP_PAGE.issuer.routeName,
                    pathParameters: {'issuerId': id}
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10),
                backgroundColor: themeAlmostWhiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/svgs/cart.svg',
                    width: 30,
                    height: 30,
                    colorFilter: const ColorFilter.mode(themeAlmostBlackColor, BlendMode.srcIn),
                  ),
                  //Icon(Icons.shopping_cart), // Add cart icon
                  Text(
                    'buy',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ),


        Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: Container(
            width: circleRadius,
            height: circleRadius,
            decoration: const ShapeDecoration( shape: CircleBorder(), color: Colors.white ),
            child: Padding(
              padding: EdgeInsets.all(circleBorderWidth),
              child: DecoratedBox(
                decoration: ShapeDecoration(
                  shape: const CircleBorder(),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(logo),
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