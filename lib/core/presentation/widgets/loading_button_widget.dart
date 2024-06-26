import 'package:flutter/material.dart';

import '../../styles/animations.dart';

class TButton extends StatelessWidget {
  const TButton(
      {super.key,
      this.loading = false,
      required this.constraints,
      required this.btnColor,
      required this.btnText,
      required this.onPressed});

  final BoxConstraints constraints;
  final Color btnColor;
  final String btnText;
  final Function() onPressed;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: AppAnimation.kAnimationDuration,
      curve: AppAnimation.kAnimationCurve,
      width: constraints.maxWidth,
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: loading
            ? const CircularProgressIndicator( color: Colors.white, )
            : Text( btnText, style: Theme.of(context).textTheme.labelMedium ),
      ),
    );
  }
}
