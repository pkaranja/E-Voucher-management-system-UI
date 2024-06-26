import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

import '../../../core/styles/animations.dart';

showSnackBar(BuildContext context,
    {required String message, required bool hasError}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: hasError ? Colors.red : Colors.green,
  ));
}

loadingDialog(BuildContext context) {
  return showAdaptiveDialog(
    barrierColor: Colors.white.withOpacity(.1),
    context: context,
    builder: (context) => Material(
      color: Colors.transparent,
      child: PopScope(
        canPop: false,
        child: Center(
          child: AnimatedContainer(
            duration: AppAnimation.kAnimationDuration,
            curve: AppAnimation.kAnimationCurve,
            height: 135,
            width: 135,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SpinKitSpinningLines(
                  color: Colors.indigo,
                  size: 55,
                ),
                Text("Loading..."),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

String apiDateFormatter(DateTime date){
  String formattedDateTime = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSS").format(date);

  return formattedDateTime;
}

