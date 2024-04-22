import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zawadi/global/styles/app_colors.dart';
import '../../config/custom_colors.dart';
import '../router_utils.dart';

class QrooAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Size prefSize;
  final String title1;
  final String title2;
  // A bool to check whether its a subpage or not.
  final bool isSubPage;
  // Shopping cart data available.
  final bool hasShoppingCartData;
  //Notifications available
  final bool hasNotifications;
  final bool hasBackButton;

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  const QrooAppBar(
      {
        required this.title1,
        this.title2 = "",
        this.isSubPage = false,
        this.hasShoppingCartData = false,
        this.hasNotifications = false,
        required this.hasBackButton,
        this.prefSize = const Size.fromHeight(56.0),
        super.key});

  @override
  State<QrooAppBar> createState() => _QrooAppBarState();
}

class _QrooAppBarState extends State<QrooAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Image.asset(
              'assets/images/logo.png', // Path to your logo image
              height: 40, // Adjust the height as needed
            ),
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
                    text: widget.title1,
                    style: const TextStyle(
                      color: themePrimaryColor,
                    ),
                  ),
                  // TextSpan(
                  //   text: widget.title2,
                  //   style: const TextStyle(
                  //     color: Colors.grey,
                  //   ),
                  // ),
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
        widget.hasShoppingCartData ? IconButton(
          onPressed: () => GoRouter.of(context).goNamed(APP_PAGE.search.routeName),
          icon: const Icon(Icons.shopping_cart_outlined),
        ) : const Icon(null),

        widget.hasNotifications ? IconButton(
          onPressed: () => GoRouter.of(context).goNamed(APP_PAGE.search.routeName),
          icon: const Icon(Icons.notifications_active),
        ) : const Icon(null),
      ],
    );
  }
}
