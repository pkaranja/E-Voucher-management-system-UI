import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

final networkStateProvider = ChangeNotifierProvider((ref) => NetworkStateProvider());

class NetworkStateProvider extends ChangeNotifier {
  bool _isDeviceConnected = false;

  NetworkStateProvider() {
    InternetConnection().onStatusChange.listen((InternetStatus status) {
      switch (status) {
        case InternetStatus.connected:
          _isDeviceConnected = true;
          notifyListeners();
          break;
        default:
          _isDeviceConnected = false;
          notifyListeners();
          break;
      }
    });
  }

  bool get isDeviceConnected => _isDeviceConnected;
}