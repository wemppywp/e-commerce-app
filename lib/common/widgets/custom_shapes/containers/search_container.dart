import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/device/device_utility.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class WSearchContainer extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  const WSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: WSizes.defaultSpace),
  });

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: WDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(WSizes.md),
          decoration: BoxDecoration(
              color: showBackground ? dark ? WColors.dark : WColors.light : Colors.transparent,
              borderRadius: BorderRadius.circular(WSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: WColors.grey) : null
          ),
          child: Row(
            children: [
              Icon(icon, color: WColors.darkerGrey,),
              const SizedBox(width: WSizes.spaceBtwItems,),
              Text(text, style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}