import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:zawadi/global/styles/theme.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppTheme.lightTheme.colorScheme.primary,
                AppTheme.lightTheme.colorScheme.secondary,
                AppTheme.lightTheme.colorScheme.tertiary
              ])),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shoppers Supermarket",
                  style: AppTheme.darkTheme.textTheme.labelMedium,
                ),
                Text(
                  "Introducing Flutter News, the go-to platform for all your news needs! Whether you're into global affairs, tech innovations, sports highlights, entertainment buzz, or financial insights. We bring you the latest updates tailored to your interests. ",
                  style: AppTheme.darkTheme.textTheme.bodyMedium,
                )
              ],
            ),
          ),
        )

        //required animations
        .animate()
        .fade(duration: const Duration(seconds: 1))
        .shimmer(duration: const Duration(seconds: 1));
  }
}