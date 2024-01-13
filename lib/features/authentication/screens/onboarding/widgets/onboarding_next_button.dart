import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:w_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/device/device_utility.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Positioned(
        right: WSizes.defaultSpace,
        bottom: WDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? WColors.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
