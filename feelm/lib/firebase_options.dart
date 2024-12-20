// File generated by FlutterFire CLI.
// 이 파일은 FlutterFire CLI를 통해 생성된 Firebase 설정 파일입니다.
// Flutter 프로젝트에서 Firebase를 초기화하는 데 사용됩니다.

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

//firebase web 설정
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCtoZO7OZ9kmCmyChPkadV_TASrNTkZcw8',
    appId: '1:1059599937255:web:84950166a7af07849a3c42',
    messagingSenderId: '1059599937255',
    projectId: 'feelm-eae84',
    authDomain: 'feelm-eae84.firebaseapp.com',
    storageBucket: 'feelm-eae84.firebasestorage.app',
    measurementId: 'G-J1EXFGZW9N',
  );

//firebase android 설정
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8Ct_8lBneRm9ak2ECmuhtQHGmUTe1xys',
    appId: '1:1059599937255:android:8e74a53a4f1fb7899a3c42',
    messagingSenderId: '1059599937255',
    projectId: 'feelm-eae84',
    storageBucket: 'feelm-eae84.firebasestorage.app',
  );

//firebase ios 설정
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyATjYn5clO5_l9d-XzDE2-AHIBWovSIJe8',
    appId: '1:1059599937255:ios:fd2b22f49cfbb8249a3c42',
    messagingSenderId: '1059599937255',
    projectId: 'feelm-eae84',
    storageBucket: 'feelm-eae84.firebasestorage.app',
    iosBundleId: 'com.example.feelm',
  );

//firebase macos 설정
  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyATjYn5clO5_l9d-XzDE2-AHIBWovSIJe8',
    appId: '1:1059599937255:ios:fd2b22f49cfbb8249a3c42',
    messagingSenderId: '1059599937255',
    projectId: 'feelm-eae84',
    storageBucket: 'feelm-eae84.firebasestorage.app',
    iosBundleId: 'com.example.feelm',
  );

//firebase window 설정
  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCtoZO7OZ9kmCmyChPkadV_TASrNTkZcw8',
    appId: '1:1059599937255:web:8186a3f24a05ab9c9a3c42',
    messagingSenderId: '1059599937255',
    projectId: 'feelm-eae84',
    authDomain: 'feelm-eae84.firebaseapp.com',
    storageBucket: 'feelm-eae84.firebasestorage.app',
    measurementId: 'G-RX15EJ3FTM',
  );
}
