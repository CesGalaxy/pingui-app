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
    apiKey: 'AIzaSyCkCzojhQFTX0bDRGSPtytMaA3z55yKO_M',
    appId: '1:891205520299:web:c0b12b1c1b373271e420ee',
    messagingSenderId: '891205520299',
    projectId: 'pingui-app',
    authDomain: 'pingui-app.firebaseapp.com',
    storageBucket: 'pingui-app.appspot.com',
    measurementId: 'G-45Y14QRDXE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRFOODBM0G4LeKigF1hXQpJnzyXuvqSC8',
    appId: '1:891205520299:android:57b854169035ef0ae420ee',
    messagingSenderId: '891205520299',
    projectId: 'pingui-app',
    storageBucket: 'pingui-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnpqyEhqQtbVFZXEG_BudMfqH3c1ozyDk',
    appId: '1:891205520299:ios:0eeb478215b687b3e420ee',
    messagingSenderId: '891205520299',
    projectId: 'pingui-app',
    storageBucket: 'pingui-app.appspot.com',
    iosBundleId: 'csg.pingui.pinguiApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDnpqyEhqQtbVFZXEG_BudMfqH3c1ozyDk',
    appId: '1:891205520299:ios:1d716186855a92ebe420ee',
    messagingSenderId: '891205520299',
    projectId: 'pingui-app',
    storageBucket: 'pingui-app.appspot.com',
    iosBundleId: 'csg.pingui.pinguiApp.RunnerTests',
  );
}
