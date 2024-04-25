// Packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:zawadi/core/config/constants.dart';
import 'package:zawadi/global/handlers/error_types.dart';
import 'package:zawadi/pages/base/base_screen.dart';
import 'package:zawadi/pages/cart/cart_tab.dart';
import 'package:zawadi/pages/issuers/issuers_screen.dart';
import 'package:zawadi/pages/onboarding/onboarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

//Custom files
import 'package:zawadi/global/router_utils.dart';
import 'package:zawadi/global/app_state.dart';
import 'package:zawadi/pages/settings/update_profile.dart';
import 'package:zawadi/pages/settings/user_profile.dart';

import '../controllers/profile_controller.dart';
import '../pages/auth/login_screen.dart';
import '../pages/auth/verify_screen.dart';
import '../pages/global/errors/error_screen.dart';
import '../pages/issuers/issuer_screen.dart';

class AppRouter {
  AppRouter({
    required this.appStateProvider,
    required this.prefs,
  });

  AppStateProvider appStateProvider;
  late SharedPreferences prefs;
  get router => _router;

  Future<bool> checkUserData() async {
    final user = FirebaseAuth.instance.currentUser;

    if ( user != null ){
      // Get updated profile data
      final userProfileData = await ProfileController().getUserProfile();

      if( userProfileData.complete != false && userProfileData.isEmailVerified != false ) {
        //return true if all user checks are valid
        return true;
      }
    }
    // If no user is authenticated, return false
    return false;
  }

  late final GoRouter _router = GoRouter(
    refreshListenable: appStateProvider,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: APP_PAGE.home.routeName,
        builder: (context, state) => const BaseScreen(),
      ),

      // Error page
      GoRoute(
          path: APP_PAGE.error.routePath,
          name: APP_PAGE.error.routeName,
          builder: (context, state) => const ErrorScreen( ErrorType.general )),

      // Add the onboarding Screen
      GoRoute(
        path: APP_PAGE.onboard.routePath,
        name: APP_PAGE.onboard.routeName,
        builder: (context, state) => const OnBoardScreen()),

      // Add Auth Screen on Go Router
      GoRoute(
        path: APP_PAGE.auth.routePath,
        name: APP_PAGE.auth.routeName,
        builder: (context, state) => const LoginScreen()),

      // Verify email page
      GoRoute(
          path: APP_PAGE.verifyEmail.routePath,
          name: APP_PAGE.verifyEmail.routeName,
          builder: (context, state) => const VerifyEmailScreen()),

      // Edit profile page
      GoRoute(
          path: APP_PAGE.editProfile.routePath,
          name: APP_PAGE.editProfile.routeName,
          builder: (context, state) => const UpdateAccountScreen()),

      // Profile page
      GoRoute(
          path: APP_PAGE.profile.routePath,
          name: APP_PAGE.profile.routeName,
          builder: (context, state) => const UserProfileScreen()),

      // Cart page
      GoRoute(
          path: APP_PAGE.cart.routePath,
          name: APP_PAGE.cart.routeName,
          builder: (context, state) => const CartTab()),

      // Issuers page
      GoRoute(
        path: APP_PAGE.issuers.routePath,
        name: APP_PAGE.issuers.routeName,
        builder: (context, state) {
          final String? title = state.pathParameters['title'];
          final int? categoryId = state.pathParameters['categoryId'] as int?;
          final String? q = state.pathParameters['q'];
          IssuerListType issuerListType = parseIssuerListType(state.pathParameters['issuerListType']!);

          return IssuersScreen(
              title: title ?? '',
              issuerListType: issuerListType,
              q: q ?? '',
              categoryId: categoryId ?? 0);
        },),

      // Issuer page
      GoRoute(
        path: APP_PAGE.issuer.routePath,
        name: APP_PAGE.issuer.routeName,
        builder: (context, state) {
          String? issuerId = state.pathParameters['issuerId'];
          String? issuerName = state.pathParameters['issuerName'];
          return IssuerScreen(issuerId: issuerId!, issuerName: issuerName!, cardId: 1,);
        },
      ),

      // Category page
      GoRoute(
        path: APP_PAGE.category.routePath,
        name: APP_PAGE.category.routeName,
        builder: (context, state) {
          //return default category incase there is no id passed
          int categoryId = int.tryParse(state.pathParameters['categoryId'] ?? '') ?? 1;
          String? title = state.pathParameters['title'];
          return IssuersScreen(categoryId: categoryId, title: title, issuerListType: IssuerListType.CATEGORY,);
        },
      ),

    ],

    redirect: (context, state) async {
      // define the named path of onboard screen
      final String onboardPath = state.namedLocation(APP_PAGE.onboard.routeName);

      // define the named path of auth screen
      final String authPath = state.namedLocation(APP_PAGE.auth.routeName);

      // define the named path of update profile screen
      final String editProfilePath = state.namedLocation(APP_PAGE.editProfile.routeName);

      // Checking if current path is onboarding or not
      bool isOnboarding = state.matchedLocation == onboardPath;

      // Checking if current path is auth or not
      bool isAuthenticating = state.matchedLocation == authPath;

      // Checking if current path is profile update or not
      bool isProfileUpdate = state.matchedLocation == editProfilePath;

      // Fetching user data existence
      bool userDataExists = await checkUserData();

      // check if sharedPref as onBoardCount key or not
      //if is does then we won't onboard else we will
      bool toOnboard = prefs.containsKey('onBoardCount') ? false : true;

      // Check if user is loggedin or not based on userLog Status
      bool isLoggedIn = FirebaseAuth.instance.currentUser != null ? true : false;

      if (toOnboard) {
        // return null if the current location is already OnboardScreen to prevent looping
        return isOnboarding ? null : onboardPath;
      }

      // only authenticate if user is not logged in
      else if (!isLoggedIn) {
        return isAuthenticating ? null : authPath;
      }

      // Redirect to profile edit page if user is logged in but profile data not available
      if (isLoggedIn && !userDataExists) {
        return editProfilePath;
      }

      // Returning null will tell router to don't mind redirect section
      return null;
    },
  );
}
