enum APP_PAGE { onboard, auth, home, search, vouchers, favorite, issuers, issuer, verifyEmail, editProfile, profile, cart }

extension AppPageExtension on APP_PAGE {
  // create path for routes
  String get routePath {
    switch (this) {
      case APP_PAGE.home:
        return "/";

      case APP_PAGE.vouchers:
        return "home/vouchers";

      case APP_PAGE.onboard:
        return "/onboard";

      case APP_PAGE.auth:
        return "/auth";

      case APP_PAGE.search:
        return "/search";

      case APP_PAGE.favorite:
        return "/favorite";

      case APP_PAGE.verifyEmail:
        return "/verify";

      case APP_PAGE.issuers:
        return "/issuers/:title";

      case APP_PAGE.issuer:
        return "/issuer/:issuerId";

      case APP_PAGE.profile:
        return "/profile";

      case APP_PAGE.editProfile:
        return "/editProfile";

      case APP_PAGE.cart:
        return "/cart";


      default:
        return "/";
    }
  }

// for named routes
  String get routeName {
    switch (this) {
      case APP_PAGE.home:
        return "Home";

      case APP_PAGE.vouchers:
        return "Vouchers";

      case APP_PAGE.onboard:
        return "ONBOARD";

      case APP_PAGE.auth:
        return "AUTH";

      case APP_PAGE.search:
        return "SEARCH";

      case APP_PAGE.favorite:
        return "FAVORITE";

      case APP_PAGE.verifyEmail:
        return "VERIFY";

      case APP_PAGE.issuers:
        return "Issuers";

      case APP_PAGE.issuer:
        return "Issuer";

      case APP_PAGE.profile:
        return "PROFILE";

      case APP_PAGE.editProfile:
        return "EDIT PROFILE";

      case APP_PAGE.cart:
        return "CART";

      default:
        return "HOME";
    }
  }

// for page titles
  String get routePageTitle {
    switch (this) {
      case APP_PAGE.home:
        return "Home";
      case APP_PAGE.auth:
        return "Sign In";
      case APP_PAGE.issuers:
        return "Issuers";
      case APP_PAGE.search:
        return "Search";
      case APP_PAGE.favorite:
        return "Your Favorites";
      case APP_PAGE.profile:
        return "Your Profile";
      case APP_PAGE.cart:
        return "Cart";
      default:
        return "Home";
    }
  }
}
