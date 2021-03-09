import 'package:flutter/material.dart';

import 'package:quiz_app/services/size_config.dart';
import 'package:quiz_app/widgets/result_card.dart';

class ResultPage extends StatelessWidget {
  static const String id = 'resultpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 1,
        title: Center(
          child: Text(
            'Results',
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getScreenWidth(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.96,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.96,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.96,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.96,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.96,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.86,
                ),
                SizedBox(
                  height: 10,
                ),
                ResultCard(
                  cardTitle: 'Basic Trignometry',
                  category: 'Mathematics',
                  progressValue: 0.78,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
