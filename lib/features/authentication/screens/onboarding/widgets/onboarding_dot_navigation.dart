import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:w_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/device/device_utility.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: WDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: WSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? WColors.light : WColors.dark,
              dotHeight: 6),
        ));
  }
}
