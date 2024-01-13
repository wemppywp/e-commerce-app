import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:w_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:w_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:w_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:w_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:w_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';
import 'package:w_store/utils/device/device_utility.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
        body: Stack(
      children: [
        /// Horizontal scrollable pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
                image: WImages.onBoardingImage1,
                title: WTexts.onBoardingTitle1,
                subTitle: WTexts.onBoardingSubTitle1),
            OnBoardingPage(
                image: WImages.onBoardingImage2,
                title: WTexts.onBoardingTitle2,
                subTitle: WTexts.onBoardingSubTitle2),
            OnBoardingPage(
                image: WImages.onBoardingImage3,
                title: WTexts.onBoardingTitle3,
                subTitle: WTexts.onBoardingSubTitle3)
          ],
        ),

        /// Skip Button
        const OnBoardingSkip(),

        /// Dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),

        /// Circular Button
        const OnBoardingNextButton(),
      ],
    ));
  }
}


