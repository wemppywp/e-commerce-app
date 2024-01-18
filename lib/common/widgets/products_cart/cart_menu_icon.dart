import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class WCartCounterIcon extends StatelessWidget {
  const WCartCounterIcon({
    super.key, required this.onPressed, this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Stack(children: [
      IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          )
      ),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: dark ? WColors.white : WColors.black,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: dark ? WColors.darkerGrey : WColors.white, fontSizeFactor: 0.8),),
          ),
        ),
      )
    ]
    );
  }
}