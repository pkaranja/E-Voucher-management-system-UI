import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../config/constants.dart';
import '../../styles/app_colors.dart';
import '../../utils/router_utils.dart';

class QrooAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Size prefSize;
  final String? title1;
  final String? title2;
  final bool hasShoppingCartData;
  final bool hasNotifications;
  final bool hasBackButton;

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  const QrooAppBar(
      {
        this.title1,
        this.title2,
        this.hasShoppingCartData = true,
        this.hasNotifications = true,
        this.hasBackButton = false,
        this.prefSize = const Size.fromHeight(56.0),
        super.key});

  @override
  State<QrooAppBar> createState() => _QrooAppBarState();
}

class _QrooAppBarState extends State<QrooAppBar> {

  @override
  Widget build(BuildContext context) {

    String appTitle1 = widget.title1 ?? Constants.primaryTitle ?? "";
    String appTitle2 = widget.title2 ?? Constants.secondaryTitle ?? "";

    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Image.asset( 'assets/images/logo.png',  height: 40 ),
          ),
          SizedBox(width: 10.w),
          Text.rich(
            TextSpan(
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: themePrimaryColor,
                    fontFamily: 'Blueberry'
                ),
                children: [
                  TextSpan(
                    text: appTitle1,
                    style: const TextStyle(
                      color: themePrimaryColor,
                    ),
                  ),
                  TextSpan(
                    text: appTitle2,
                    style: const TextStyle( color: Colors.grey, ),
                  ),
                ]
            ),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      leading: widget.hasBackButton ? IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          } else {
            GoRouter.of(context).goNamed(APP_PAGE.home.routeName);
          }
        },
      ) : null,
      actions: [
        widget.hasNotifications ? IconButton(
          onPressed: () => GoRouter.of(context).goNamed(APP_PAGE.notifications.routeName),
          icon: const Icon(Icons.notifications_active),
        ) : const Icon(null),

        widget.hasShoppingCartData ? Stack(
          children: [
            IconButton(
              onPressed: () => GoRouter.of(context).goNamed(APP_PAGE.cart.routeName),
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Text(
                  "4",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: themeAlmostWhiteColor,
                  ),
                ),
              ),
            ),
          ],
        ): const Icon(null),

      ],
    );
  }
}
