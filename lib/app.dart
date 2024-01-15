import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:w_store/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/theme/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: WAppTheme.lightTheme,
      darkTheme: WAppTheme.darkTheme,
      /// Show loader or Circular progress indicator meanwhile authentication repository is deciding to show relevant screen.
      home: const OnBoardingScreen(),
    );
  }
}
