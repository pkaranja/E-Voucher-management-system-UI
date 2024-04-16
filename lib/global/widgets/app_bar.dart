import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:zawadi/pages/settings/user_profile.dart';
import '../../config/custom_colors.dart';
import '../router_utils.dart';

class QrooAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Size prefSize;
  final String title1;
  final String title2;
  // A bool to check whether its a subpage or not.
  final bool isSubPage;
  // Search icon.
  final bool hasSearchFunction;

  final bool hasBackButton;

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  const QrooAppBar(
      {
        required this.title1,
        this.title2 = "",
        this.isSubPage = false,
        this.hasSearchFunction = false,
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
      title: Text.rich(
        TextSpan(
            style: const TextStyle(
              fontSize: 34,
              fontFamily: 'Teko',
            ),
            children: [
              TextSpan(
                text: widget.title1,
                style: TextStyle(
                  color: CustomColors.customSwatchColor,
                ),
              ),
              TextSpan(
                text: widget.title2,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ]
        ),
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
        widget.hasSearchFunction ? IconButton(
          onPressed: () => GoRouter.of(context).goNamed(APP_PAGE.search.routeName),
          icon: const Icon(Icons.search),
        ) : const Icon(null),
        IconButton(
          icon: const Icon(Icons.shopping_cart_sharp),
          onPressed: () => GoRouter.of(context).goNamed(APP_PAGE.cart.routeName),
        ),
      ],
    );
  }
}
