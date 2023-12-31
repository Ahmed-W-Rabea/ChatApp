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
    apiKey: 'AIzaSyA6j-vHdLgrk8PavWd3ZCtJ0ssU_tejx5I',
    appId: '1:754971049428:web:757368c1ce36fb2a006a41',
    messagingSenderId: '754971049428',
    projectId: 'chat-app-f4f66',
    authDomain: 'chat-app-f4f66.firebaseapp.com',
    storageBucket: 'chat-app-f4f66.appspot.com',
    measurementId: 'G-WLV2GGKP82',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAumccQI_RtnHPQV0zVxM-XSxQn0A0-L8s',
    appId: '1:754971049428:android:980bdb67d2a87149006a41',
    messagingSenderId: '754971049428',
    projectId: 'chat-app-f4f66',
    storageBucket: 'chat-app-f4f66.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKXzltBnPqPF54k9SuM4K_kv_4-NTlAoI',
    appId: '1:754971049428:ios:8500f95619acc8ec006a41',
    messagingSenderId: '754971049428',
    projectId: 'chat-app-f4f66',
    storageBucket: 'chat-app-f4f66.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKXzltBnPqPF54k9SuM4K_kv_4-NTlAoI',
    appId: '1:754971049428:ios:3c9ce8d53fd1925c006a41',
    messagingSenderId: '754971049428',
    projectId: 'chat-app-f4f66',
    storageBucket: 'chat-app-f4f66.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
