import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/services/size_config.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    Key key,
    this.cardTitle,
    this.category,
    this.progressValue,
  }) : super(key: key);

  final String cardTitle, category;
  final double progressValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getScreenHeight(120),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 0.5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$cardTitle',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Category: ',
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.4),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '$category',
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.4),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CircularPercentIndicator(
                  backgroundColor: Colors.transparent,
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: progressValue,
                  center: new Text(
                    "${(progressValue * 100).round()}",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                  ),
                  progressColor: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
