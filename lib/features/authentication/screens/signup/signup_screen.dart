import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
          padding: EdgeInsets.all(WSizes.defaultSpace),
          child: Column(
            children: [
              /// Title
              Text(WTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: WSizes.spaceBtwSections,),

              /// form
              Form(child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: WTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
