import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:w_store/app.dart';
import 'package:w_store/data/repositories/authentication/authentication_repository.dart';

import 'firebase_options.dart';

Future<void> main() async {

  /// widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// Init local storage
  await GetStorage.init();

  /// await native splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// initialize firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform).then(
          (FirebaseApp value) => Get.put(AuthenticationRepository())
  );
  // TODO: initialize authentication
  runApp(const App());
}
