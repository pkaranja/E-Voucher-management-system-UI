import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zawadi/features/payment/provider/payment_status_provider.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../gen/assets.gen.dart';

class PaymentStatusWidget extends ConsumerStatefulWidget {
   const PaymentStatusWidget({super.key});

  @override
  PaymentStatusWidgetState createState() => PaymentStatusWidgetState();
}

class PaymentStatusWidgetState extends ConsumerState<PaymentStatusWidget> {
  @override
  Widget build(BuildContext context) {
    final bool transactionStatus = ref.watch(paymentStateProvider.notifier).state;
    final bool isLoading = ref.watch(processingPaymentStateProvider.notifier).state;

    if (isLoading) {
      return const Center( child: CircularProgressIndicator() );
    }

    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewPadding.bottom,
          top: 32.h,
          left: 16.w,
          right: 16.w,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(Assets.svgs.check,),
            SizedBox(height: 8.h,),
            Text( transactionStatus ? 'Success' : 'Failed',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: transactionStatus ? themeInfoColor : themeDangerColor,
              ),
            ),
            SizedBox(height: 8.h,),
            Text(
              transactionStatus ?
              'Your payment was successfully received, your Zawadi is on its way.' :
              'Something went wrong with your transaction failed, please try again',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: transactionStatus ? themeInfoColor : themeDangerColor,
              ),
            ),
            SizedBox(height: 64.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                transactionStatus ?
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(themePrimaryColor,),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r,),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all(
                        Size(160.w, 56.h,),
                      ),
                    ),
                    onPressed: () {
                      // Add functionality to print receipt
                    },
                    child: const Text('View e-Receipt'),
                  )
                : ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(themePrimaryColor,),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r,),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                      Size(160.w, 56.h,),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Try again'),
                ),

                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(themePrimaryColor,),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r,),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                      Size(160.w, 56.h,),
                    ),
                  ),
                  onPressed: () {
                    // Add functionality to navigate to Home
                  },
                  child: Text('Home'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}