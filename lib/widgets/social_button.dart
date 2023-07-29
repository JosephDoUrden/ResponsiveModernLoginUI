import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_modern_login_ui/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final labelFontSize = 17.0;
  final horizontalPadding;
  final verticalPadding = 30.0;
  final VoidCallback onPressed;
  const SocialButton(
      {super.key,
      required this.iconPath,
      required this.label,
      this.horizontalPadding = 100.0,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: Pallete.whiteColor,
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Pallete.whiteColor,
          fontSize: labelFontSize,
        ),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
