import 'package:flutter/material.dart';
import 'package:w_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:w_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:w_store/utils/constants/colors.dart';

class WPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const WPrimaryHeaderContainer({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return WCurvedEdgeWidget(
      child: Container(
        color: WColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: WCircularContainer(
                  backgroungColor: WColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: WCircularContainer(
                  backgroungColor: WColors.textWhite.withOpacity(0.1),
                ),
              ),
              child
            ],
          ),
        ),
    );
  }
}