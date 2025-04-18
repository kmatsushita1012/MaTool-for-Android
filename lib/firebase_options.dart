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
    apiKey: 'AIzaSyBrt1j7LXIa9kHZKIJne5HFA9JI7gNrwG8',
    appId: '1:1034239276746:web:11b20b6c6365256ac52633',
    messagingSenderId: '1034239276746',
    projectId: 'matool-90b1d',
    authDomain: 'matool-90b1d.firebaseapp.com',
    storageBucket: 'matool-90b1d.firebasestorage.app',
    measurementId: 'G-YEBH8XZXBF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzL7__Iz1r7WClE9Cx5WG4UJ31uCio5U8',
    appId: '1:1034239276746:android:06edb426278f3db2c52633',
    messagingSenderId: '1034239276746',
    projectId: 'matool-90b1d',
    storageBucket: 'matool-90b1d.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBhtbR0nbqBUSDl9cYZXnbVEJY61PSmzmY',
    appId: '1:1034239276746:ios:a10fabd020a4c8d3c52633',
    messagingSenderId: '1034239276746',
    projectId: 'matool-90b1d',
    storageBucket: 'matool-90b1d.firebasestorage.app',
    iosBundleId: 'com.studiomk.matool',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBhtbR0nbqBUSDl9cYZXnbVEJY61PSmzmY',
    appId: '1:1034239276746:ios:a10fabd020a4c8d3c52633',
    messagingSenderId: '1034239276746',
    projectId: 'matool-90b1d',
    storageBucket: 'matool-90b1d.firebasestorage.app',
    iosBundleId: 'com.studiomk.matool',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBrt1j7LXIa9kHZKIJne5HFA9JI7gNrwG8',
    appId: '1:1034239276746:web:4511073fd557314bc52633',
    messagingSenderId: '1034239276746',
    projectId: 'matool-90b1d',
    authDomain: 'matool-90b1d.firebaseapp.com',
    storageBucket: 'matool-90b1d.firebasestorage.app',
    measurementId: 'G-159J41EEPX',
  );
}
