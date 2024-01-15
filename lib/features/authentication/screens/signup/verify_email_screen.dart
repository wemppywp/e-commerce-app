import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_store/common/widgets/success_screen/success_screen.dart';
import 'package:w_store/features/authentication/screens/login/login_screen.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(WSizes.defaultSpace),
          child: Column(
            children: [
              /// image
              Image(image: const AssetImage(WImages.deliveredEmailIllustration), width: WHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: WSizes.spaceBtwSections,),

              /// title & subtitle
              Text(
                WTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),
              Text(
                "support@wemppywp.com",
                style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),
              Text(
                WTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.titleSmall, textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: WSizes.spaceBtwSections,
              ),

              /// buttons
              SizedBox(width: double.infinity, child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                      image: WImages.staticSuccessIllustration, 
                      title: WTexts.yourAccountCreatedTitle, 
                      subTitle: WTexts.yourAccountCreatedSubTitle, 
                      onPressed: () => Get.to(() => LoginScreen()))
                  ), 
                  child: const Text(WTexts.tContinue)),
              ),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(WTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
