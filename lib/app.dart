import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zawadi/global/app_state.dart';
import 'package:zawadi/global/router.dart';
import 'package:zawadi/global/handlers/permissions_handler.dart';
import 'package:zawadi/global/auth_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:zawadi/global/styles/app_colors.dart';

import 'global/styles/theme.dart';

class MyApp extends StatefulWidget {
  SharedPreferences prefs;

  MyApp({required this.prefs, Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = FirebaseAuth.instance.currentUser != null ? true : false;

  Future<bool> isUserLoggedIn() async {
    var user;

    try {
      user = FirebaseAuth.instance.currentUser!.reload();
      // Listen for auth changes
    } on FirebaseAuthException catch (e) {
      // If admin deletes user from control panel
      if (e.code == "user-not-found" || e.code == "user-disabled") {
        return false;
      }
    } catch (e) {
      // if any error just return no user
      return false;
    }
    return user != null ? true : false;
  }

  @override
  void didChangeDependencies() async {
    if (isLoggedIn) {
      final hasUser = await isUserLoggedIn();
      setState(() => isLoggedIn = hasUser);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeSwitch()),
        ChangeNotifierProvider(create: (context) => AppStateProvider()),
        ChangeNotifierProvider(create: (context) => AppPermissionProvider()),
        ChangeNotifierProvider(create: (context) => AuthStateProvider()),

        ProxyProvider<AppStateProvider, AppRouter>(
            update: (context, appStateProvider, _) => AppRouter(
              appStateProvider: appStateProvider,
              prefs: widget.prefs,
            ))
      ],
      child: Builder(
        builder: ((context) {
          final GoRouter router = Provider.of<AppRouter>(context).router;
          final themeSwitch = Provider.of<ThemeSwitch>(context);

          final isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
          final systemNavigationBarColor = isDarkMode ? themeAlmostBlackColor : themeLightGreyColor;

          return ScreenUtilInit(
            designSize: const Size(390, 844),
            builder: (context, child) => AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle(
                systemNavigationBarColor: systemNavigationBarColor,
              ),
              child: MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  routeInformationProvider: router.routeInformationProvider,
                  routeInformationParser: router.routeInformationParser,
                  theme: AppTheme.lightTheme,
                  darkTheme: AppTheme.darkTheme,
                  themeMode: themeSwitch.themeMode,
                  routerDelegate: router.routerDelegate
                ),
            ),
          );
        }),
      ),
    );
  }
}