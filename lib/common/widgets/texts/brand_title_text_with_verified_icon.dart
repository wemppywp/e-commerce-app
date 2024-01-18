import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:w_store/common/widgets/texts/brand_title_text.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/enums.dart';
import 'package:w_store/utils/constants/sizes.dart';

class WBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const WBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = WColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: WBrandTitleText(
            title: title,
            color: textColor,
            maxLine: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: WSizes.xs,),
        Icon(Iconsax.verify5, color: iconColor, size: WSizes.iconXs,)
      ],
    );
  }
}