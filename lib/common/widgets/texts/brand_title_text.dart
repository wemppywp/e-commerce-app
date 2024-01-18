import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/enums.dart';
import 'package:w_store/utils/constants/sizes.dart';

class WBrandTitleText extends StatelessWidget {
  const WBrandTitleText({
    super.key,
    this.color,
    required this.title,
    this.maxLine = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final Color? color;
  final String title;
  final int maxLine;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      // check which brandSize is required and set that style
      style: brandTextSize == TextSizes.small
        ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
        : brandTextSize == TextSizes.medium
            ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
            : brandTextSize == TextSizes.large
                ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                : Theme.of(context).textTheme.bodyMedium!.apply(color: color)
    );
  }
}