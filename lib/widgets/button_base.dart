import 'package:flutter/material.dart';

class ButtonBase extends StatelessWidget {
  ButtonBase(
      {this.title,
      this.borderColor = Colors.black,
      this.backgroundColor = Colors.white,
      this.textColor = Colors.black,
      this.onPress});

  final String title;
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 60,
      onPressed: onPress,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(color: borderColor),
      ),
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 18, color: textColor),
      ),
    );
  }
}
