import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../global/styles/app_colors.dart';

class AwaitScreen extends StatelessWidget {
  const AwaitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
    final systemBackgroundColor = isDarkMode ?  themeLightGreyColor : themeAlmostBlackColor;
    final spinnerColor = isDarkMode ? themePrimaryColor : themeAlmostBlackColor;

    return Scaffold(
      backgroundColor: systemBackgroundColor,
        body: SafeArea(
          child: Center(
            child: Container(
              height: 500,
              width: 135,
              decoration: BoxDecoration(
                color: systemBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpinKitSpinningLines(
                    color: spinnerColor,
                    size: 100,
                  ),
                  const SizedBox(height: 30,),
                  const Text("Loading..."),
                ],
              ),
            ),
          ),
        ),
    );
  }
}