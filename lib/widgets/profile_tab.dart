import 'package:flutter/material.dart';

import '../core/styles/app_colors.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    super.key,
    required this.constraints,
    required this.title,
    required this.iconName,
    required this.titleValue,
  });

  final BoxConstraints constraints;
  final String title;
  final IconData iconName;
  final String titleValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              iconName,
              color: themeExtraDarkGreyColor,
              size: 25,
            ),
            SizedBox(
              width: constraints.maxWidth * 0.06,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: themeExtraDarkGreyColor, fontSize: 14),
                ),
                Text(
                  titleValue,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: constraints.maxHeight * 0.01,
        ),
        Divider(
          thickness: 1,
          color: themeExtraDarkGreyColor.withOpacity(0.2),
        ),
        SizedBox(
          height: constraints.maxHeight * 0.01,
        ),
      ],
    );
  }
}
