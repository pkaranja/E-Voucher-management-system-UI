import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:zawadi/controllers/apiRequests.dart';
import 'package:zawadi/pages/global/await.dart';
import 'package:zawadi/pages/global/errors/error_screen.dart';
import 'app.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/database/database.dart';
import 'firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'global/handlers/error_types.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Show loading screen while initializing Firebase
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ScreenUtilInit(
      designSize: const Size(390, 844),
      child: AwaitScreen(),
    ),
  ));

  // Check internet connection before proceeding
  var connectivityResult = await InternetConnection().hasInternetAccess;
  if (!connectivityResult) {
    runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        designSize: const Size(390, 844),
        child: ErrorScreen(ErrorType.network),
      ),
    ));
    return;
  }

  try {
    //initialize shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();

    //initialize firebase
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);

    // Initialize other services
    await initializeServices();

    runApp(
      ProviderScope(
          child: MyApp(prefs: prefs)
      ),
    );
  } catch (error) {
    // If initialization fails, show an error screen
    print('Error initializing app: $error');
    runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        designSize: const Size(390, 844),
        child: ErrorScreen(ErrorType.initialization),
      )
    ));
  }
}


//Initialize required services
Future<void> initializeServices() async {

  try {
    //Load ENV files
    await dotenv.load(fileName: '.env');
  } catch (error) {
    // Handle errors
    rethrow;
  }

  try {
    //Initialize local database
    await isarInit();
  } catch (error) {
    // Handle errors
    rethrow;
  }


  try {
    //handle crashlytics errors
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  } catch (error) {
    // Handle errors
    rethrow;
  }

  try{
    //initialize firebase analytics
    FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: analytics);
  } catch (error) {
    rethrow;
  }

  try{
    // Initialize Remote Config
    FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const Duration(seconds: 10),
    ));
    await remoteConfig.fetchAndActivate();
  } catch (error) {
    rethrow;
  }

  try{
    //initialize firebase app check
    await FirebaseAppCheck.instance.activate(
      androidProvider: kDebugMode ? AndroidProvider.debug : AndroidProvider
          .playIntegrity,
      appleProvider: AppleProvider.debug,
    );
  } catch (error) {
    // Handle errors
    rethrow;
  }

  try{
    // Check API availability connection before proceeding
    bool apiAvailable = await ApiRequests().apiHealthCheck();
    if ( !apiAvailable ){
      throw('API DOWN','System API not reachable');
    }
  } catch (error) {
    rethrow;
  }
}