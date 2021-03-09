import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/screens/create_account.dart';
import 'package:quiz_app/screens/login_with_email.dart';
import 'package:quiz_app/services/size_config.dart';
import 'package:quiz_app/widgets/homescreen_button.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcomescreen';

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getScreenWidth(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: Center(
                  child: Hero(
                    tag: 'HeroLogo',
                    child: Image.asset(
                      'assets/images/logo_quiz.png',
                      width: getScreenWidth(375),
                      height: getScreenHeight(375),
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getScreenWidth(20),
                  ),
                  child: Column(
                    children: [
                      HomeScreenButton(
                        buttonText: 'Login with Email',
                        svgIcon: 'assets/svgs/email.svg',
                        color: Color(0xff55aaff),
                        borderColor: Colors.greenAccent,
                        onTap: () {
                          Navigator.pushNamed(context, LoginWithEmail.id);
                        },
                      ),
                      // SizedBox(
                      //   height: getScreenHeight(15),
                      // ),
                      // HomeScreenButton(
                      //   buttonText: 'Login with Google',
                      //   svgIcon: 'assets/svgs/google.svg',
                      //   color: Color(0xff55aaff),
                      // ),
                      SizedBox(
                        height: getScreenHeight(15),
                      ),
                      HomeScreenButton(
                        buttonText: 'Create Account',
                        svgIcon: 'assets/svgs/create.svg',
                        borderColor: Color(0xff55aaff),
                        onTap: () {
                          Navigator.pushNamed(context, CreateAccount.id);
                        },
                      ),
                    ],
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
