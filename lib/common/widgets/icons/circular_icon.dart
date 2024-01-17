import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';
import 'package:w_store/utils/helpers/helper_functions.dart';

class WCircularIcon extends StatelessWidget {
  const WCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = WSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor != null ? backgroundColor! : dark ? WColors.black.withOpacity(0.9) : WColors.white.withOpacity(0.9),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size,)),
    );
  }
}