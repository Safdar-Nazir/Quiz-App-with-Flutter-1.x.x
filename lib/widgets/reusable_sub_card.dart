import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/services/size_config.dart';

class ReusableSubCard extends StatelessWidget {
  const ReusableSubCard(
      {Key key,
      this.cardTextColor,
      this.cardText,
      this.cardColor,
      this.svgAsset,
      this.svgColor})
      : super(key: key);

  final String svgAsset, cardText;
  final Color cardColor, cardTextColor, svgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(120),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Spacer(),
          SvgPicture.asset(
            svgAsset,
            width: getScreenWidth(35),
          ),
          Spacer(),
          Text(
            '$cardText',
            style: TextStyle(
              fontSize: getScreenHeight(15),
              color: cardTextColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
