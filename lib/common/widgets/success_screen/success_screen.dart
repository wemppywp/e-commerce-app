import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_store/common/styles/spacing_styles.dart';
import 'package:w_store/features/authentication/screens/login/login_screen.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subTitle;
  final VoidCallback onPressed;
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: WSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// image
              Image(image: AssetImage(image), width: WHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: WSizes.spaceBtwSections,),

              /// title & subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.titleSmall, textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: WSizes.spaceBtwSections,
              ),

              /// buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: const Text(WTexts.tContinue)),
              ),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
