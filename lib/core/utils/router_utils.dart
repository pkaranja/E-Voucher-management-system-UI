enum APP_PAGE {
  onboard, auth, home, search, giftcards, favorite, error, payment,
  issuers, issuer, category, verifyEmail, editProfile, profile, cart, notifications }

extension AppPageExtension on APP_PAGE {
  // create path for routes
  String get routePath {
    switch (this) {
      case APP_PAGE.home:
        return "/";

      case APP_PAGE.giftcards:
        return "home/giftcards";

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
        return "/issuers/:issuerListType/:title/:q?";

      case APP_PAGE.issuer:
        return "/issuer/:issuerId";

      case APP_PAGE.category:
        return "/category/:categoryId/:title";

      case APP_PAGE.profile:
        return "/profile";

      case APP_PAGE.editProfile:
        return "/editProfile";

      case APP_PAGE.cart:
        return "/cart";

      case APP_PAGE.notifications:
        return "/notifications";

      case APP_PAGE.payment:
        return "/payment";

      case APP_PAGE.error:
        return "/error";

      default:
        return "/";
    }
  }

// for named routes
  String get routeName {
    switch (this) {
      case APP_PAGE.home:
        return "Home";

      case APP_PAGE.giftcards:
        return "Giftcards";

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

      case APP_PAGE.category:
        return "Category";

      case APP_PAGE.profile:
        return "PROFILE";

      case APP_PAGE.editProfile:
        return "EDIT PROFILE";

      case APP_PAGE.cart:
        return "Incomplete gift cards";

      case APP_PAGE.notifications:
        return "Notifications";

      case APP_PAGE.payment:
        return "Payment";

      case APP_PAGE.error:
        return "ERROR";

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
      case APP_PAGE.category:
        return "Category";
      case APP_PAGE.search:
        return "Search";
      case APP_PAGE.favorite:
        return "Your Favorites";
      case APP_PAGE.profile:
        return "Your Profile";
      case APP_PAGE.cart:
        return "Cart";
      case APP_PAGE.notifications:
        return "Notifications";
      case APP_PAGE.payment:
        return "Payment";
      case APP_PAGE.error:
        return "Error";
      default:
        return "Home";
    }
  }
}
