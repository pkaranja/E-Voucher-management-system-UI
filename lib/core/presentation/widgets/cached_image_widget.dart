import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    required this.imageUrl,
    this.width,
    this.height,
    this.fit,
    Key? key}) : super(key: key);

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: fit,
      width: width,
      height: height,
      imageUrl: imageUrl,
      progressIndicatorBuilder: (context, url, progress) =>
      Center(
        child: SpinKitSpinningLines(
          color: Theme.of(context).hintColor,
          size: 40.h,
        ),
      ),
      errorWidget: (context, url, error) => Center(
        child: SvgPicture.asset(
          'assets/svgs/document_error.svg',
          width: 30,
          height: 30,
          colorFilter: ColorFilter.mode(Theme.of(context).hintColor, BlendMode.srcIn),
        ),
      ),
    );
  }
}