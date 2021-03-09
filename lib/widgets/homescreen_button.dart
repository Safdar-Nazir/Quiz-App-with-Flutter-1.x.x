import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/services/size_config.dart';

class HomeScreenButton extends StatelessWidget {
  const HomeScreenButton({
    Key key,
    this.buttonText,
    this.svgIcon,
    this.color,
    this.onTap,
    this.borderColor,
  }) : super(key: key);
  final String buttonText, svgIcon;
  final Color color, borderColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: getScreenHeight(60),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: borderColor,
            )),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: getScreenHeight(10)),
                  child: SvgPicture.asset(
                    '$svgIcon',
                    height: getScreenHeight(35),
                  ),
                ),
              ),
              // SizedBox(
              //   width: getScreenWidth(15),
              // ),
              Expanded(
                flex: 3,
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: getScreenHeight(17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
