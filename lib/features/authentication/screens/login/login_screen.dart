import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_store/common/styles/spacing_styles.dart';
import 'package:w_store/common/widgets/login_signup/form_divider.dart';
import 'package:w_store/common/widgets/login_signup/social_buttons.dart';
import 'package:w_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:w_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: WSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title, subtitle
              const WLoginHeader(),

              /// form
              const WLoginForm(),

              /// divider
              WFormDivider(dividerText: WTexts.orSignInWith.capitalize!,),
              const SizedBox(
                height: WSizes.spaceBtwItems,
              ),
              /// footer
              const WSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}








