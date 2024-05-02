import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zawadi/features/settings/presentation/screens/settings_screen.dart';
import 'package:zawadi/pages/home/home_tab.dart';
import 'package:zawadi/features/gift_cards/presentation/screens/purchased_giftcards_screen.dart';
import 'package:zawadi/features/gift_cards/presentation/screens/received_giftcards_screen.dart';

import '../../core/styles/app_colors.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            HomeTab(),
            ReceivedGiftcardsScreen(),
            PurchasedGiftcardsScreeen(),
            SettingsScreen(),
            //UserProfileScreen(),
          ],
        ),
        bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: themePrimaryLightColor.withOpacity(0.5),
              labelTextStyle: MaterialStateProperty.all(
                const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'QrooFont'
                ),
              ),
            ),
            child: NavigationBar(
              elevation: 0,
              backgroundColor: Theme.of(context).colorScheme.background,
              animationDuration: const Duration (seconds: 1),
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              height: 70,
              selectedIndex: currentIndex,
              onDestinationSelected: (index) {
                setState(() {
                  currentIndex = index;
                  pageController.jumpToPage(index);
                });
              },

              destinations: [
                NavigationDestination(
                  icon: SvgPicture.asset(
                    'assets/svgs/explore.svg',
                    width: 30,
                    height: 30,
                    colorFilter: ColorFilter.mode(Theme.of(context).hintColor, BlendMode.srcIn),
                  ),
                  label: 'Explore',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(
                    'assets/svgs/gift.svg',
                    width: 28,
                    height: 28,
                    colorFilter: ColorFilter.mode(Theme.of(context).hintColor, BlendMode.srcIn),
                  ),
                  label: 'Received',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(
                    'assets/svgs/purchased.svg',
                    width: 30,
                    height: 30,
                    colorFilter: ColorFilter.mode(Theme.of(context).hintColor, BlendMode.srcIn),
                  ),
                  label: 'Purchased',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(
                    'assets/svgs/settings.svg',
                    width: 30,
                    height: 30,
                    colorFilter: ColorFilter.mode(Theme.of(context).hintColor, BlendMode.srcIn),
                  ),
                  label: 'Settings',
                ),
                // NavigationDestination(
                //   icon: SvgPicture.asset(
                //     'assets/svgs/profile.svg',
                //     width: 30,
                //     height: 30,
                //     colorFilter: ColorFilter.mode(Theme
                //         .of(context)
                //         .hintColor, BlendMode.srcIn),
                //   ),
                //   label: 'Profile',
                // ),
              ],
            )
        ),
      ),
    );
  }
}
