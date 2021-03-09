import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_authentication/app/ui/shared/glassmorphism_colors.dart';

class GlassInput extends StatelessWidget {
  final String text;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool isObscure;

  const GlassInput(
      {this.text, this.prefixIcon, this.suffixIcon, this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: GlassmorphismColors.white),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      child: Row(
        children: [
          Icon(
            prefixIcon,
            color: GlassmorphismColors.white,
          ),
          SizedBox(width: 8),
          Expanded(
            child: TextFormField(
              obscureText: isObscure,
              decoration: InputDecoration(
                hintText: text,
                hintStyle: TextStyle(
                    color: GlassmorphismColors.white.withOpacity(0.7),
                    fontSize: 18),
              ),
            ),
          ),
          SizedBox(width: 5),
          suffixIcon != null
              ? Icon(
                  suffixIcon,
                  color: GlassmorphismColors.white,
                )
              : Container()
        ],
      ),
    );
  }
}
