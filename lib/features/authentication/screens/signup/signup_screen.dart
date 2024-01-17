import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:w_store/common/widgets/appbar/appbar.dart';
import 'package:w_store/common/widgets/login_signup/form_divider.dart';
import 'package:w_store/common/widgets/login_signup/social_buttons.dart';
import 'package:w_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(WSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                WTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: WSizes.spaceBtwSections,
              ),

              /// form
              const WSignupForm(),

              /// divider
              WFormDivider(dividerText: WTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: WSizes.spaceBtwInputFields,
              ),

              /// social button
              const WSocialButtons(),
              const SizedBox(
                height: WSizes.spaceBtwInputFields,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


