import 'package:flutter/cupertino.dart';
import 'package:glassmorphism_authentication/app/ui/shared/glassmorphism_colors.dart';

class GlassSphere extends StatelessWidget {
  final double top;
  final double left;
  final double right;
  final double bottom;
  final double height;
  final double width;

  const GlassSphere(
      {this.top, this.left, this.right, this.bottom, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      bottom: bottom,
      top: top,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              GlassmorphismColors.purpleLight,
              GlassmorphismColors.purpleDark
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            shape: BoxShape.circle),
      ),
    );
  }
}
