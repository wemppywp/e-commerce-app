import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:w_store/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';

class WSignupForm extends StatelessWidget {
  const WSignupForm({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            /// first & last name
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: WTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(
                  width: WSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: WTexts.lastName, prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: WSizes.spaceBtwInputFields,
            ),

            /// username
            TextFormField(
              decoration: const InputDecoration(
                  labelText: WTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(
              height: WSizes.spaceBtwInputFields,
            ),

            /// email
            TextFormField(
              decoration: const InputDecoration(
                  labelText: WTexts.email, prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: WSizes.spaceBtwInputFields,
            ),

            /// phone number
            TextFormField(
              decoration: const InputDecoration(
                  labelText: WTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: WSizes.spaceBtwInputFields,
            ),

            /// password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: WTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: WSizes.spaceBtwInputFields,
            ),

            /// term & conditions checkbox
            const WTermsAndConditionCheckbox(),
            const SizedBox(
              height: WSizes.spaceBtwInputFields,
            ),

            /// sign up button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                child: const Text(WTexts.createAccount),
              ),
            ),
            const SizedBox(
              height: WSizes.spaceBtwInputFields,
            ),
          ],
        )
    );
  }
}

