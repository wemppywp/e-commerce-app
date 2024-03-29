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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDMiJgtAbvFjVbEgAz9j-DJYda4ul2989c',
    appId: '1:498273060741:web:5dd9323fd420c31d5666ec',
    messagingSenderId: '498273060741',
    projectId: 'ecommerceapp-16912',
    authDomain: 'ecommerceapp-16912.firebaseapp.com',
    storageBucket: 'ecommerceapp-16912.appspot.com',
    measurementId: 'G-VC3M4C0LGK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYb3_VBlQLNRIcRpsVlw-JDWwig-B457c',
    appId: '1:498273060741:android:0ea3da5e1e85303c5666ec',
    messagingSenderId: '498273060741',
    projectId: 'ecommerceapp-16912',
    storageBucket: 'ecommerceapp-16912.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3QVPwdcfORGYIUPTRdpQXxY3HKQR4J9M',
    appId: '1:498273060741:ios:5fc479cc1116e40f5666ec',
    messagingSenderId: '498273060741',
    projectId: 'ecommerceapp-16912',
    storageBucket: 'ecommerceapp-16912.appspot.com',
    androidClientId: '498273060741-r7orll25vhr43juk1inl0ummj9cq2945.apps.googleusercontent.com',
    iosClientId: '498273060741-o4v3rppdcq91ad4iubcejr4titsf759u.apps.googleusercontent.com',
    iosBundleId: 'com.wemppywp.ecommerceapp',
  );
}
