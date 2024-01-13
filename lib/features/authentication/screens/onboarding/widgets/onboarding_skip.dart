import 'package:flutter/material.dart';
import 'package:w_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: WDeviceUtils.getAppBarHeight(),
        right: WSizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skipPage();
          },
          child: const Text("Skip"),
        ));
  }
}
