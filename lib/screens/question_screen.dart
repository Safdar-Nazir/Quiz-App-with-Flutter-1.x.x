import 'package:flutter/material.dart';
import 'package:quiz_app/services/constants.dart';
import 'package:quiz_app/services/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class QuestionScreen extends StatefulWidget {
  static const String id = 'questionScreen';
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  Color borderColor, circleColor, iconColor;
  IconData icon;

  List<String> options = ['First', 'Second', 'Third', 'Fourth'];
  int selectedIndex = 0;
  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig _sizeConfig = SizeConfig();
    _sizeConfig.init(context);
    return Scaffold(
      backgroundColor: Color(0xff141a33),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getScreenWidth(
              16,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      'Mathematics Quiz',
                      style: TextStyle(
                        color: kSecondaryColor,
                      ),
                    ),
                    SizedBox(
                      height: getScreenHeight(20),
                    ),
                    Text(
                      'Question 06/20',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'The graphs of the two linear equations ax+ +by = c and bx - ay = c where a, b and c are all not equal to zero.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Spacer(),
                    customRadioButton(
                      options[0],
                      1,
                    ),
                    SizedBox(
                      height: getScreenHeight(
                        20,
                      ),
                    ),
                    customRadioButton(
                      options[1],
                      2,
                    ),
                    SizedBox(
                      height: getScreenHeight(
                        20,
                      ),
                    ),
                    customRadioButton(
                      options[2],
                      3,
                    ),
                    SizedBox(
                      height: getScreenHeight(
                        20,
                      ),
                    ),
                    customRadioButton(
                      options[3],
                      4,
                    ),
                    SizedBox(
                      height: getScreenHeight(
                        20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      buttonWidth: MediaQuery.of(context).size.width * .40,
                      buttonText: 'End',
                      backgroundColor: Colors.white10,
                      textColor: Colors.white54,
                    ),
                    CustomButton(
                      buttonWidth: MediaQuery.of(context).size.width * .40,
                      buttonText: 'Next',
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      onTap: () {
                        print(selectedIndex);
                        print(options[selectedIndex]);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customRadioButton(
    String text,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          changeIndex(index);
        });
      },
      child: Container(
        height: getScreenHeight(60),
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedIndex == index ? Colors.green : Colors.blueGrey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getScreenHeight(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  color:
                      selectedIndex == index ? Colors.green : Colors.blueGrey,
                  fontSize: 16,
                ),
              ),
              Icon(
                // FontAwesomeIcons.circle,
                selectedIndex == index
                    ? FontAwesomeIcons.solidCheckCircle
                    : FontAwesomeIcons.circle,
                color: selectedIndex == index ? Colors.green : Colors.blueGrey,
                size: getScreenHeight(22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
