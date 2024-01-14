import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/image_strings.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class WLoginHeader extends StatelessWidget {
  const WLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(
                dark ? WImages.lightAppLogo : WImages.darkAppLogo)),
        Text(
          WTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: WSizes.sm,
        ),
        Text(
          WTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}