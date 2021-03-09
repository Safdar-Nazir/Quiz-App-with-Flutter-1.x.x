import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/services/size_config.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    Key key,
    this.hintText,
    this.validator,
    this.obscureText,
    this.iconPressed,
    this.suffixIcon,
    this.onChanged,
  }) : super(key: key);

  final String hintText;
  final Function validator, iconPressed, onChanged;
  final bool obscureText;
  final IconData suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffD3D3D3),
      ),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        keyboardType: TextInputType.emailAddress,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obscureText ?? false,
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: getScreenWidth(20),
            vertical: getScreenHeight(18),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            textBaseline: TextBaseline.alphabetic,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              suffixIcon,
            ),
            onPressed: iconPressed,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
