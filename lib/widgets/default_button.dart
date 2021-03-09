import 'package:flutter/material.dart';
import 'package:quiz_app/services/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.buttonText,
    this.backgroundColor,
    this.onTap,
    this.textColor,
    this.borderColor,
  }) : super(key: key);
  final String buttonText;
  final Color backgroundColor, textColor, borderColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: getScreenHeight(60),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: borderColor,
              width: 1,
            )),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: getScreenHeight(17),
            ),
          ),
        ),
      ),
    );
  }
}
