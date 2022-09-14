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
    apiKey: 'AIzaSyA0z3z-6eneKrtUbGJ4Nl7ZfqBfIDv8-HI',
    appId: '1:183239926455:web:0635b5bee91760fdf82332',
    messagingSenderId: '183239926455',
    projectId: 'sayaranew-11517',
    authDomain: 'sayaranew-11517.firebaseapp.com',
    storageBucket: 'sayaranew-11517.appspot.com',
    measurementId: 'G-LW19YMC0S5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCI1O2RDCNaNaJY2dn0eeA69jvY8rULadI',
    appId: '1:183239926455:android:8a6406d8b2e43937f82332',
    messagingSenderId: '183239926455',
    projectId: 'sayaranew-11517',
    storageBucket: 'sayaranew-11517.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHuz_ZDszWP8K6l3oUp2-A7tk-jCHM8hI',
    appId: '1:183239926455:ios:84f736115e2798d9f82332',
    messagingSenderId: '183239926455',
    projectId: 'sayaranew-11517',
    storageBucket: 'sayaranew-11517.appspot.com',
    iosClientId: '183239926455-tam4qjd312c10lb6l89ile7vvi6g8jce.apps.googleusercontent.com',
    iosBundleId: 'com.example.sayaranew',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDHuz_ZDszWP8K6l3oUp2-A7tk-jCHM8hI',
    appId: '1:183239926455:ios:84f736115e2798d9f82332',
    messagingSenderId: '183239926455',
    projectId: 'sayaranew-11517',
    storageBucket: 'sayaranew-11517.appspot.com',
    iosClientId: '183239926455-tam4qjd312c10lb6l89ile7vvi6g8jce.apps.googleusercontent.com',
    iosBundleId: 'com.example.sayaranew',
  );
}
