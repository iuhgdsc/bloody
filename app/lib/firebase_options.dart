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
    apiKey: 'AIzaSyCWP2YrV-8atcKid_siasVdZ3VDXXH1tJM',
    appId: '1:1079206980247:web:d477604f5871f085e6d7d2',
    messagingSenderId: '1079206980247',
    projectId: 'bloody-gdsc',
    authDomain: 'bloody-gdsc.firebaseapp.com',
    storageBucket: 'bloody-gdsc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARtKNpJW-4oIqZdX56zf6k8Fpzd_Tf1yo',
    appId: '1:1079206980247:android:2da6520a2437a3f7e6d7d2',
    messagingSenderId: '1079206980247',
    projectId: 'bloody-gdsc',
    storageBucket: 'bloody-gdsc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCqQ1lsFRP2QM_p3PvrV8RXZXHRGke6ThU',
    appId: '1:1079206980247:ios:9e01884c80eba1ede6d7d2',
    messagingSenderId: '1079206980247',
    projectId: 'bloody-gdsc',
    storageBucket: 'bloody-gdsc.appspot.com',
    androidClientId: '1079206980247-8akoioe4rhmi8eskgi9su0vdt0muo2fq.apps.googleusercontent.com',
    iosClientId: '1079206980247-j1cfm2nl573de8p267i3tmm65n0ut5e6.apps.googleusercontent.com',
    iosBundleId: 'com.example.bloody',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCqQ1lsFRP2QM_p3PvrV8RXZXHRGke6ThU',
    appId: '1:1079206980247:ios:3630e6cfd019ab3fe6d7d2',
    messagingSenderId: '1079206980247',
    projectId: 'bloody-gdsc',
    storageBucket: 'bloody-gdsc.appspot.com',
    androidClientId: '1079206980247-8akoioe4rhmi8eskgi9su0vdt0muo2fq.apps.googleusercontent.com',
    iosClientId: '1079206980247-th6nj8163c41oc14lthas34gfd6mdass.apps.googleusercontent.com',
    iosBundleId: 'com.example.bloodyChallenge',
  );
}