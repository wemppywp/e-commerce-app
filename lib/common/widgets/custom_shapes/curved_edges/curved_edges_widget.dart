import 'package:flutter/material.dart';
import 'package:w_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class WCurvedEdgeWidget extends StatelessWidget {
  final Widget? child;
  const WCurvedEdgeWidget({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WCustomCurvedEdges(),
      child: child,
    );
  }
}
