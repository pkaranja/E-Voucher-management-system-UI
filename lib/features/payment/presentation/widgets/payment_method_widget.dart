import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zawadi/core/styles/app_colors.dart';
import 'package:zawadi/features/payment/presentation/widgets/payment_number_input_widget.dart';
import 'package:zawadi/features/payment/provider/selected_payment_method_provider.dart';

import '../../../../core/styles/animations.dart';
import '../../data/model/payment_method_model.dart';

class PaymentMethodWidget extends ConsumerWidget {
  const PaymentMethodWidget(this.paymentMethod, {super.key});
  final PaymentMethod paymentMethod;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedPaymentMethod = ref.watch(selectedPaymentMethodProvider);

    return GestureDetector(
      onTap: () {
        ref.read(selectedPaymentMethodProvider.notifier).selectPaymentMethod(paymentMethod);
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return const PaymentNumberInputWidget();
          },
        );
      },
      child: Row(
        children: [
          AnimatedContainer(
            duration: AppAnimation.kAnimationDuration,
            curve: AppAnimation.kAnimationCurve,
            width: 24.w,
            height: 24.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: paymentMethod == selectedPaymentMethod
                ? themePrimaryColor : themeGreyColor,
                width: 2,
              ),
            ),
            child: Center(
              child: paymentMethod == selectedPaymentMethod
                ? AnimatedContainer(
                duration: AppAnimation.kAnimationDuration,
                curve: AppAnimation.kAnimationCurve,
                width: 16.w,
                height: 16.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: themePrimaryColor,
                ),
              ): Container(),
            ),
          ),
          SizedBox(width: 16.w,),
          Expanded(
            child: AnimatedContainer(
              duration: AppAnimation.kAnimationDuration,
              curve: AppAnimation.kAnimationCurve,
              height: 64.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                color: paymentMethod == selectedPaymentMethod
                    ? themePrimaryColor
                    : themeGreyColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Text(
                    paymentMethod.name,
                    style: TextStyle(
                      color: paymentMethod == selectedPaymentMethod
                        ? themeAlmostWhiteColor
                        : themePrimaryColor,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 30.h,
                    child: Image.asset(paymentMethod.assetName),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}