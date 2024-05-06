import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:zawadi/pages/settings/update_profile.dart';
import 'package:zawadi/widgets/profile_tab.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';
import '../../core/presentation/widgets/app_bar_widget.dart';
import '../../core/presentation/widgets/loading_button_widget.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../core/styles/animations.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/theme.dart';
import '../../features/authentication/presentation/screens/forgot_password.dart';


class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final ref = FirebaseDatabase.instance.ref('Users');
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
        appBar: const QrooAppBar( hasBackButton: false ),

        //Content
      body: StreamBuilder(
      stream: ref.child(user.uid.toString()).onValue,
      builder: ((context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data.snapshot.value == null ||
              snapshot.data.snapshot.value == "") {
            return SafeArea(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Something went wrong with your request, please try again later!'),
                      ],
                    ),
                  );
                },
              ),
            );
          } else {
            Map<dynamic, dynamic> map = snapshot.data.snapshot.value;
            return Scaffold(
              body: SafeArea(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return OrientationBuilder(
                      builder: (BuildContext context, Orientation orientation) {
                        return SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(
                                  height: constraints.maxHeight * 0.03,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                   const UpdateAccountScreen())));
                                        },
                                        icon: const Icon(Icons.edit))
                                  ],
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.03,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AnimatedContainer(
                                      duration: AppAnimation.kAnimationDuration,
                                      curve: AppAnimation.kAnimationCurve,
                                      height:
                                      orientation == Orientation.portrait
                                          ? constraints.maxHeight * 0.2
                                          : constraints.maxHeight * 0.4,
                                      width: orientation == Orientation.portrait
                                          ? constraints.maxHeight * 0.2
                                          : constraints.maxHeight * 0.4,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 4,
                                              color:
                                              Theme.of(context).cardColor),
                                          shape: BoxShape.circle,
                                          color: Theme.of(context).canvasColor),
                                      child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(100),
                                        child: map['profilePic'].toString() ==
                                            ""
                                            ? const Icon(
                                          Icons.person,
                                          size: 90,
                                          color: themeExtraDarkGreyColor,
                                        )
                                            : Image.network(
                                          map['profilePic'].toString(),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.03,
                                ),
                                ProfileTab(
                                    constraints: constraints,
                                    title: 'First Name',
                                    iconName: Icons.person,
                                    titleValue: map['firstName']),
                                ProfileTab(
                                    constraints: constraints,
                                    title: 'Last Name',
                                    iconName: Icons.person,
                                    titleValue: map['lastName']),
                                ProfileTab(
                                    constraints: constraints,
                                    title: 'Phone number',
                                    iconName: Icons.call,
                                    titleValue: map['phoneNumber']),
                                ProfileTab(
                                    constraints: constraints,
                                    title: 'Address',
                                    iconName: Icons.maps_home_work,
                                    titleValue: map['address']),
                                ProfileTab(
                                    constraints: constraints,
                                    title: 'Date of Birth',
                                    iconName: Icons.person,
                                    titleValue: map['dateOfBirth']),
                                SizedBox(
                                  height: constraints.maxHeight * 0.01,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Dark Mode',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    const Spacer(),
                                    themeSwitch(context)
                                  ],
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.04,
                                ),
                                TButton(
                                  constraints: constraints,
                                  btnColor: Theme.of(context).primaryColor,
                                  btnText: 'Sign out',
                                  onPressed: () {
                                    FirebaseAuth.instance.signOut();
                                    GoRouter.of(context).go('/auth');
                                  },
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.03,
                                ),
                                TButton(
                                  constraints: constraints,
                                  btnColor: Theme.of(context).primaryColor,
                                  btnText: 'Reset Password',
                                  onPressed: () {
                                    PersistentNavBarNavigator.pushNewScreen(
                                      context,
                                      screen: const ForgotPassScreen(),
                                      withNavBar:
                                      false, // OPTIONAL VALUE. True by default.
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.06,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            );
          }
        } else {
          return Center(
            child: SpinKitSpinningLines(
              color: Theme.of(context).hintColor,
              size: 40.h,
            ),
          );
        }
      }),
    ),
  );
}

  FlutterSwitch themeSwitch(BuildContext context) {
    final switchThemeIns = Provider.of<ThemeSwitch>(context);
    return FlutterSwitch(
      width: 50,
      height: 30,
      padding: 0,
      activeToggleColor: kDarkCardC,
      inactiveToggleColor: Theme.of(context).primaryColor,
      activeSwitchBorder: Border.all(
        color: kDarkGreenBackC,
        width: 4,
      ),
      inactiveSwitchBorder: Border.all(
        color: kTextFieldBorderC,
        width: 4,
      ),
      activeColor: kDarkGreenColor,
      inactiveColor: kTextFieldColor,
      activeIcon: Icon(
        Icons.nightlight_round,
        color: Theme.of(context).primaryColor,
      ),
      inactiveIcon: const Icon(
        Icons.wb_sunny,
        color: kTextFieldColor,
      ),
      value: switchThemeIns.isDarkMode,
      onToggle: (value) {
        final provider = Provider.of<ThemeSwitch>(context, listen: false);
        provider.switchTheme(value);
      },
    );
  }
}