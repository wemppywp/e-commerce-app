import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:w_store/features/authentication/screens/login/login_screen.dart';
import 'package:w_store/features/authentication/screens/onboarding/onboarding_screen.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  /// variables
  final deviceStorage = GetStorage();

  /// called from main..dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// function to show relevant screen
  screenRedirect() async {
    // local storage
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(() => const OnBoardingScreen());
  }

  /*-------- Email & Password Sign In --------*/
}