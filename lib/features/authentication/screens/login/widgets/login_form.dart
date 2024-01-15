import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:w_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:w_store/features/authentication/screens/signup/signup_screen.dart';
import 'package:w_store/navigation_menu.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';

class WLoginForm extends StatelessWidget {
  const WLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: WSizes.spaceBtwItems),
          child: Column(
            children: [
              ///email
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: WTexts.email,
                ),
              ),
              const SizedBox(
                height: WSizes.spaceBtwInputFields,
              ),

              ///password
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: WTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),

              /// remember me & forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(WTexts.rememberMe),
                    ],
                  ),

                  /// forget password
                  TextButton(
                      onPressed: () {
                        Get.to(() => ForgetPassword());
                      },
                      child: const Text(WTexts.forgetPassword))
                ],
              ),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),
              /// Sign in button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => NavigationMenu());
                      },
                      child: const Text(WTexts.signIn))),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        Get.offAll(SignupScreen());
                      },
                      child: const Text(WTexts.createAccount))),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),
            ],
          ),
        ));
  }
}