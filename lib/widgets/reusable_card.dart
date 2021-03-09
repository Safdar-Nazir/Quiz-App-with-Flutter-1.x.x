import 'package:flutter/material.dart';
import 'package:quiz_app/services/size_config.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key key,
    this.cardText,
    this.progressText,
    this.cardBackground,
    this.progressColor,
    this.cardTextColor,
    this.progressTextColor,
    this.progressBar,
  }) : super(key: key);

  final String cardText, progressText;
  final Color progressColor, cardBackground, cardTextColor, progressTextColor;
  final double progressBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(120),
      height: getScreenHeight(130),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cardBackground,
      ),
      child: Column(
        children: [
          Spacer(),
          CircularPercentIndicator(
            backgroundColor: Colors.transparent,
            animation: true,
            animationDuration: 400,
            radius: 60.0,
            lineWidth: 5.0,
            percent: .58,
            center: new Text(
              "$progressText",
              style: TextStyle(
                color: progressTextColor,
                fontSize: 15,
              ),
            ),
            progressColor: progressColor,
          ),
          Spacer(),
          Text(
            '$cardText',
            style: TextStyle(
              color: cardTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
