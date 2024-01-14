import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:w_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:w_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:w_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:w_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

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

