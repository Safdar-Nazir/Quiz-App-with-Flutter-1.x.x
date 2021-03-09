import 'package:flutter/material.dart';
import 'package:quiz_app/services/size_config.dart';
import 'package:quiz_app/widgets/reusable_card.dart';
import 'package:quiz_app/widgets/reusable_sub_card.dart';

class HomePage extends StatelessWidget {
  static const String id = 'homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getScreenHeight(30),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(20),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/profile.jpeg')),
                      ),
                    ),
                    SizedBox(
                      width: getScreenWidth(15),
                    ),
                    Text(
                      'Hey Michael,\nWelcome Back.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getScreenHeight(60),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(20),
                ),
                child: Text(
                  'Continue where you left',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: getScreenHeight(20),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    SizedBox(
                      width: getScreenWidth(20),
                    ),
                    ReusableCard(
                      cardBackground: Color(0xff688c6a),
                      cardText: 'Mathamatics',
                      progressColor: Color(0xffb3cd8e),
                      progressText: '58',
                      cardTextColor: Color(0xffb3cd8e),
                      progressTextColor: Color(0xffb3cd8e),
                    ),
                    SizedBox(
                      width: getScreenWidth(10),
                    ),
                    ReusableCard(
                      cardBackground: Color(0xff496076),
                      cardText: 'Mathamatics',
                      progressColor: Color(0xffc1f1dc),
                      progressText: '58',
                      cardTextColor: Color(0xffc1f1dc),
                      progressTextColor: Color(0xffc1f1dc),
                    ),
                    SizedBox(
                      width: getScreenWidth(10),
                    ),
                    ReusableCard(
                      cardBackground: Color(0xff4984b7),
                      cardText: 'Mathamatics',
                      progressColor: Color(0xfff0bba2),
                      progressText: '58',
                      cardTextColor: Color(0xfff0bba2),
                      progressTextColor: Color(0xfff0bba2),
                    ),
                    SizedBox(
                      width: getScreenWidth(10),
                    ),
                    ReusableCard(
                      cardBackground: Color(0xffa8c1e8),
                      cardText: 'Mathamatics',
                      progressColor: Color(0xfff9f6f4),
                      progressText: '58',
                      cardTextColor: Color(0xfff9f6f4),
                      progressTextColor: Color(0xfff9f6f4),
                    ),
                    SizedBox(
                      width: getScreenWidth(10),
                    ),
                    ReusableCard(
                      cardBackground: Color(0xff545a60),
                      cardText: 'Mathamatics',
                      progressColor: Color(0xfff2c080),
                      progressText: '58',
                      cardTextColor: Color(0xfff2c080),
                      progressTextColor: Color(0xfff2c080),
                    ),
                    SizedBox(
                      width: getScreenWidth(10),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getScreenHeight(30),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getScreenHeight(20),
                ),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: getScreenHeight(30),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getScreenHeight(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableSubCard(
                        svgAsset: 'assets/svgs/chem.svg',
                        cardText: 'Chemistry',
                      ),
                    ),
                    SizedBox(
                      width: getScreenWidth(15),
                    ),
                    Expanded(
                      child: ReusableSubCard(
                        svgAsset: 'assets/svgs/nmath.svg',
                        cardText: 'Mathematics',
                      ),
                    ),
                    SizedBox(
                      width: getScreenWidth(15),
                    ),
                    Expanded(
                      child: ReusableSubCard(
                        svgAsset: 'assets/svgs/bio.svg',
                        cardText: 'Biology',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getScreenHeight(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getScreenHeight(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableSubCard(
                        svgAsset: 'assets/svgs/phy.svg',
                        cardText: 'Physics',
                      ),
                    ),
                    SizedBox(
                      width: getScreenWidth(15),
                    ),
                    Expanded(
                      child: ReusableSubCard(
                        svgAsset: 'assets/svgs/program.svg',
                        cardText: 'Programming',
                      ),
                    ),
                    SizedBox(
                      width: getScreenWidth(15),
                    ),
                    Expanded(
                      child: ReusableSubCard(
                        svgAsset: 'assets/svgs/gen.svg',
                        cardText: 'G-Knowledge',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getScreenHeight(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
