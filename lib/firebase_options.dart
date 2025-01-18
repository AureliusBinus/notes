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

import 'package:flutter_dotenv/flutter_dotenv.dart';

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

  static FirebaseOptions web = FirebaseOptions(
    apiKey: dotenv.env['WEB_API_KEY']!,
    appId: '1:1057763001573:web:657e1bc1ab793dd700c00c',
    messagingSenderId: '1057763001573',
    projectId: 'notes-21820',
    authDomain: 'notes-21820.firebaseapp.com',
    storageBucket: 'notes-21820.firebasestorage.app',
    measurementId: 'G-NW0REW4294',
  );

  static FirebaseOptions android = FirebaseOptions(
    apiKey: dotenv.env['ANDROID_API_KEY']!,
    appId: '1:1057763001573:android:18274687557acee900c00c',
    messagingSenderId: '1057763001573',
    projectId: 'notes-21820',
    storageBucket: 'notes-21820.firebasestorage.app',
  );

  static FirebaseOptions ios = FirebaseOptions(
    apiKey: dotenv.env['IOS_API_KEY']!,
    appId: '1:1057763001573:ios:7a98f4831198645f00c00c',
    messagingSenderId: '1057763001573',
    projectId: 'notes-21820',
    storageBucket: 'notes-21820.firebasestorage.app',
    iosBundleId: 'com.binus.notes',
  );

  static FirebaseOptions macos = FirebaseOptions(
    apiKey: dotenv.env['IOS_API_KEY']!,
    appId: '1:1057763001573:ios:7a98f4831198645f00c00c',
    messagingSenderId: '1057763001573',
    projectId: 'notes-21820',
    storageBucket: 'notes-21820.firebasestorage.app',
    iosBundleId: 'com.binus.notes',
  );

  static FirebaseOptions windows = FirebaseOptions(
    apiKey: dotenv.env['WEB_API_KEY']!,
    appId: '1:1057763001573:web:b1d1e88e8d7e00df00c00c',
    messagingSenderId: '1057763001573',
    projectId: 'notes-21820',
    authDomain: 'notes-21820.firebaseapp.com',
    storageBucket: 'notes-21820.firebasestorage.app',
    measurementId: 'G-E4HCGHGD5G',
  );
}