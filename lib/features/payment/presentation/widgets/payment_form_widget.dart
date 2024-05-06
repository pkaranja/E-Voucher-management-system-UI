import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zawadi/features/payment/presentation/widgets/payment_method_widget.dart';

import '../../../../core/styles/animations.dart';
import '../../data/source/payment_methods_datasource.dart';

class PaymentFormWidget extends ConsumerStatefulWidget {
  const PaymentFormWidget({Key? key}) : super(key: key);

  @override
  PaymentFormWidgetState createState() => PaymentFormWidgetState();
}

class PaymentFormWidgetState extends ConsumerState<PaymentFormWidget> {
  @override
  Widget build(BuildContext context) {
    final paymentMethods = ref.watch(paymentMethodsProvider);

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: AnimatedContainer(
        color: Theme.of(context).colorScheme.background,
        duration: AppAnimation.kAnimationDuration,
        curve: AppAnimation.kAnimationCurve,
        padding: EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsetsDirectional.only(top: 10.h, bottom: 20.h, start: 10.w),
              child:Text( "Select payment method", style: Theme.of(context).textTheme.titleSmall),
            ),

            SingleChildScrollView(
              child: Column(
                children: List.generate(
                  paymentMethods.length,
                    (index) => Column(
                    children: [
                      PaymentMethodWidget(paymentMethods[index]),
                      SizedBox( height: 10.h, ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

