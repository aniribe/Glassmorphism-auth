import 'package:flutter/cupertino.dart';
import 'package:glassmorphism_authentication/app/ui/shared/glassmorphism_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Function onPressed;
  final double padding;

  const CustomButton({this.buttonName, this.onPressed, this.padding = 20});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: padding),
        decoration: BoxDecoration(
            border: Border.all(color: GlassmorphismColors.white, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Text(
          buttonName,
          style: TextStyle(color: GlassmorphismColors.white, fontSize: 20),
        ),
      ),
    );
  }
}
