import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ConnectivityStatus { notDetermined, isConnected, isDisconnected }

class ConnectivityStatusNotifier extends StateNotifier<ConnectivityStatus> {
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult>? _connectivitySubscription;

  ConnectivityStatusNotifier() : super(ConnectivityStatus.notDetermined) {
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(
          (ConnectivityResult result) {
        switch (result) {
          case ConnectivityResult.mobile:
          case ConnectivityResult.wifi:
            state = ConnectivityStatus.isConnected;
            break;
          case ConnectivityResult.none:
            state = ConnectivityStatus.isDisconnected;
            break;
          default:
            state = ConnectivityStatus.notDetermined;
            break;
        }
      },
    );
  }

  @override
  void dispose() {
    _connectivitySubscription?.cancel();
    super.dispose();
  }
}

final connectivityStatusProvider = StateNotifierProvider<ConnectivityStatusNotifier, ConnectivityStatus>((ref) {
  return ConnectivityStatusNotifier();
});
