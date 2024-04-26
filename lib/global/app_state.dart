import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStateProvider with ChangeNotifier {
  bool? _isLoggedIn;
  bool get isLoggedIn => _isLoggedIn as bool;

  // lets define a method to check and manipulate onboard status
  void hasOnboarded() async {
    // Get the SharedPreferences instance
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoardCount', 1);

    notifyListeners();
  }

  void hasLoggedIn() async {
    _isLoggedIn = FirebaseAuth.instance.currentUser != null ? true : false;
    notifyListeners();
  }
}