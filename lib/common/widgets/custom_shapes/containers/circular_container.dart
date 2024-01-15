import 'package:flutter/material.dart';
import 'package:w_store/utils/constants/colors.dart';

class WCircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Widget? child;
  final Color backgroungColor;

  const WCircularContainer({
    super.key, this.width = 400, this.height = 400, this.radius = 400, this.padding = 0, this.child, this.backgroungColor = WColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!),
          color: WColors.white.withOpacity(0.1)
      ),
      child: child,
    );
  }
}