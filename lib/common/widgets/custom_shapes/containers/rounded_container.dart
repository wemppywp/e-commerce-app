import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/colors.dart';
import 'package:w_store/utils/constants/sizes.dart';

class WRoundedContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const WRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = WSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = WColors.borderPrimary,
    this.backgroundColor = WColors.white,
    this.padding,
    this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
