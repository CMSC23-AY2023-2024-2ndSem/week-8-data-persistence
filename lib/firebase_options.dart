// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAnSMEBmlnoTkX4uF0MwpnldaWVi3qEKIA',
    appId: '1:631238058819:web:cf7e367217ad64366a85f6',
    messagingSenderId: '631238058819',
    projectId: 'week8-data-persistence2',
    authDomain: 'week8-data-persistence2.firebaseapp.com',
    storageBucket: 'week8-data-persistence2.appspot.com',
    measurementId: 'G-NXL045GKQZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBoBC5NVWA4JOG5LUSbCSbb7YiZc2HABYI',
    appId: '1:631238058819:android:9b21f8cd9f87de996a85f6',
    messagingSenderId: '631238058819',
    projectId: 'week8-data-persistence2',
    storageBucket: 'week8-data-persistence2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSt1hSCB1kRm_UQSPkh_Z4BMjuhikE08s',
    appId: '1:631238058819:ios:a9dc2ad573a80b266a85f6',
    messagingSenderId: '631238058819',
    projectId: 'week8-data-persistence2',
    storageBucket: 'week8-data-persistence2.appspot.com',
    iosBundleId: 'com.example.week7NetworkingDiscussion',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCSt1hSCB1kRm_UQSPkh_Z4BMjuhikE08s',
    appId: '1:631238058819:ios:a9dc2ad573a80b266a85f6',
    messagingSenderId: '631238058819',
    projectId: 'week8-data-persistence2',
    storageBucket: 'week8-data-persistence2.appspot.com',
    iosBundleId: 'com.example.week7NetworkingDiscussion',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAnSMEBmlnoTkX4uF0MwpnldaWVi3qEKIA',
    appId: '1:631238058819:web:80ef4a0b9613b05a6a85f6',
    messagingSenderId: '631238058819',
    projectId: 'week8-data-persistence2',
    authDomain: 'week8-data-persistence2.firebaseapp.com',
    storageBucket: 'week8-data-persistence2.appspot.com',
    measurementId: 'G-1Q34S4HCNQ',
  );
}
