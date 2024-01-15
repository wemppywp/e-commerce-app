import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/constants/text_strings.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class WTermsAndConditionCheckbox extends StatelessWidget {
  const WTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})
        ),
        const SizedBox(
          width: WSizes.spaceBtwInputFields,
        ),
        SizedBox(
          width: 260,
          child: Text.rich(TextSpan(
              children: [
                TextSpan(text: '${WTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: '${WTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? WColors.white : WColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? WColors.white : WColors.primary
                )),
                TextSpan(text: '${WTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: '${WTexts.termsOfUse} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? WColors.white : WColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? WColors.white : WColors.primary
                )),
              ]
          )),
        )
      ],
    );
  }
}