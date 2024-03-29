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
    apiKey: 'AIzaSyCiHUkl5rIquBrxIzeTDSrLlPqbXuEuuLE',
    appId: '1:408258771832:web:46aed3432068a89c85a68d',
    messagingSenderId: '408258771832',
    projectId: 'reddit-clone-7d686',
    authDomain: 'reddit-clone-7d686.firebaseapp.com',
    storageBucket: 'reddit-clone-7d686.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCliUaNbbiUtnEhnNBhuEQ2vyJ0VeAc7FM',
    appId: '1:408258771832:android:dbbdd744bb9fdd1d85a68d',
    messagingSenderId: '408258771832',
    projectId: 'reddit-clone-7d686',
    storageBucket: 'reddit-clone-7d686.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC166lMk1Td5V74usfjsQSawKeb5on40rY',
    appId: '1:408258771832:ios:b06d37dd6a7f2c2085a68d',
    messagingSenderId: '408258771832',
    projectId: 'reddit-clone-7d686',
    storageBucket: 'reddit-clone-7d686.appspot.com',
    iosClientId: '408258771832-01rb08hkb6ico7m46pe0jv1q9tioiq7l.apps.googleusercontent.com',
    iosBundleId: 'com.example.reddit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC166lMk1Td5V74usfjsQSawKeb5on40rY',
    appId: '1:408258771832:ios:b06d37dd6a7f2c2085a68d',
    messagingSenderId: '408258771832',
    projectId: 'reddit-clone-7d686',
    storageBucket: 'reddit-clone-7d686.appspot.com',
    iosClientId: '408258771832-01rb08hkb6ico7m46pe0jv1q9tioiq7l.apps.googleusercontent.com',
    iosBundleId: 'com.example.reddit',
  );
}
