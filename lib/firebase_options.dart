// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzvIB7hDuF05j8-kRvPbq_WqNt7ys1aMg',
    appId: '1:363979580543:android:922bcadb41a5c9ccac8b4a',
    messagingSenderId: '363979580543',
    projectId: 'zawadi-tz',
    databaseURL: 'https://zawadi-tz-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'zawadi-tz.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOLEIkJithf_9EIOVAMho1OVCmmt_93Ho',
    appId: '1:363979580543:ios:f02ce97d18384210ac8b4a',
    messagingSenderId: '363979580543',
    projectId: 'zawadi-tz',
    databaseURL: 'https://zawadi-tz-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'zawadi-tz.appspot.com',
    iosClientId: '363979580543-jgjem99drion86gst6jevr3lppcd1qlg.apps.googleusercontent.com',
    iosBundleId: 'co.tz.qroo.zawadi',
  );
}
