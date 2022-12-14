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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAwYb6M41_b5kF4fpkjOHWEhaRPuV92jIk',
    appId: '1:12091508907:web:1e2ce17fd7c0ea7eab0fee',
    messagingSenderId: '12091508907',
    projectId: 'airplaneappbwa',
    authDomain: 'airplaneappbwa.firebaseapp.com',
    storageBucket: 'airplaneappbwa.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDpkQLecJk0-Df2gyRMqX_41NySaH3gKE',
    appId: '1:12091508907:android:41e6b3166b2be3b7ab0fee',
    messagingSenderId: '12091508907',
    projectId: 'airplaneappbwa',
    storageBucket: 'airplaneappbwa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvvZirzdteV0E_dbT6fKC-GbLY37GoUXs',
    appId: '1:12091508907:ios:ee66e0c90459630cab0fee',
    messagingSenderId: '12091508907',
    projectId: 'airplaneappbwa',
    storageBucket: 'airplaneappbwa.appspot.com',
    iosClientId: '12091508907-lrg0he188mlbdvosbr0q3lkmvharuv9p.apps.googleusercontent.com',
    iosBundleId: 'com.renaldhif.airplaneAppBwa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBvvZirzdteV0E_dbT6fKC-GbLY37GoUXs',
    appId: '1:12091508907:ios:a2416511f53a0e4bab0fee',
    messagingSenderId: '12091508907',
    projectId: 'airplaneappbwa',
    storageBucket: 'airplaneappbwa.appspot.com',
    iosClientId: '12091508907-86plnedni8rddo9mc7ss3n7e8s881sl7.apps.googleusercontent.com',
    iosBundleId: 'com.example.airplaneAppBwa',
  );
}
