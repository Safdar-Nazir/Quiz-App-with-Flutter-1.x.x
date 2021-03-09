import 'package:flutter/material.dart';
import 'package:quiz_app/services/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    this.buttonText,
    this.backgroundColor,
    this.onTap,
    this.textColor,
    this.buttonWidth,
  }) : super(key: key);

  final String buttonText;
  final Color backgroundColor, textColor;
  final Function onTap;
  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        height: getScreenHeight(60),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: getScreenHeight(18),
            ),
          ),
        ),
      ),
    );
  }
}
