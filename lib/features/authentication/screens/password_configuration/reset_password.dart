import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(WSizes.defaultSpace),
          child: Column(
            children: [
              /// image
              Image(image: AssetImage(WImages.deliveredEmailIllustration), width: WHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: WSizes.spaceBtwSections,),

              /// title & subtitle
              Text(
                WTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),
              Text(
                WTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.titleSmall, textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: WSizes.spaceBtwSections,
              ),

              /// buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(WTexts.done)),
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
