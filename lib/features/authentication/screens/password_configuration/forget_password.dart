import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:w_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(WSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Heading
            Text(WTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: WSizes.spaceBtwItems,),
            Text(WTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: WSizes.spaceBtwSections * 2,),
            /// Text Field
            TextFormField(
              decoration: InputDecoration(
                labelText: WTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            const SizedBox(height: WSizes.spaceBtwSections),

            /// Submit Button
            SizedBox(
              width: double.maxFinite, child: ElevatedButton(onPressed: () => Get.to(() => ResetPassword()), child: Text(WTexts.submit))
            )
          ],
        ),
      ),
    );
  }
}
