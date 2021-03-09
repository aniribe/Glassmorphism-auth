import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:glassmorphism_authentication/app/ui/shared/glassmorphism_colors.dart';

class GlassMorphismContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double topBorderRadius;
  final double bottomBorderRadius;

  const GlassMorphismContainer(
      {this.child,
      this.height,
      this.width,
      this.topBorderRadius = 20,
      this.bottomBorderRadius = 0});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
          top: Radius.circular(topBorderRadius),
          bottom: Radius.circular(bottomBorderRadius)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: RadialGradient(radius: 50, colors: [
              GlassmorphismColors.white.withOpacity(0.2),
              GlassmorphismColors.white.withOpacity(0.1)
            ]),
          ),
          child: child,
        ),
      ),
    );
  }
}
