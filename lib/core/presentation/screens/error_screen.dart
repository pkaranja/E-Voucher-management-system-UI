import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../handlers/error_types.dart';
import '../../helpers/network_state.dart';
import '../../../main.dart';
import '../../styles/app_colors.dart';

class ErrorScreen extends ConsumerWidget {
  final ErrorType errorType;

  const ErrorScreen(this.errorType, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDeviceConnected = ref.watch(networkStateProvider).isDeviceConnected;

    if (isDeviceConnected) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _restartApp();
      });
      // Return an empty SizedBox to prevent further rendering of the ErrorScreen
      return const SizedBox.shrink();
    }

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            errorType.errorImage,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            top: 290.h,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/danger.svg',
                      width: 50.h,
                      height: 50.h,
                      colorFilter: const ColorFilter.mode(
                          themeWarningColor, BlendMode.srcIn),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      errorType.errorTitle,
                      textAlign: TextAlign.center,
                      style: Theme
                          .of(context)
                          .textTheme
                          .displaySmall,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      errorType.errorMessage,
                      textAlign: TextAlign.center,
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleLarge,
                    ),
                    SizedBox(height: 20.h),
                    ElevatedButton(
                      onPressed: _restartApp,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10),
                        backgroundColor: themeAlmostWhiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            'assets/svgs/refresh.svg',
                            width: 30,
                            height: 30,
                            colorFilter: const ColorFilter.mode(
                                themeAlmostBlackColor, BlendMode.srcIn),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Retry".toUpperCase(),
                            textAlign: TextAlign.center,
                            style: Theme
                                .of(context)
                                .textTheme
                                .titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _restartApp() {
  //TODO:
  // This will restart the app. Make sure you handle this properly according app's architecture.
  // You might want to navigate to the initial screen or reset some state before restarting.
  // Note: This method is for demonstration purposes. In a real app, consider using a more appropriate approach.
  main();
}
