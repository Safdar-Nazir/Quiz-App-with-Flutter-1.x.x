import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/services/constants.dart';
import 'package:quiz_app/services/size_config.dart';
import 'package:quiz_app/widgets/default_button.dart';

import 'package:quiz_app/widgets/default_textfield.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'create_account.dart';

class LoginWithEmail extends StatefulWidget {
  static const String id = 'login';
  @override
  _LoginWithEmailState createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  final _auth = FirebaseAuth.instance;
  String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Hero(
                    tag: 'HeroLogo',
                    child: Image.asset(
                      'assets/images/logo_quiz.png',
                      width: getScreenWidth(275),
                    ),
                  ),
                ),
                Container(
                  height: getScreenHeight(100),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: getScreenWidth(34),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getScreenWidth(30),
                  ),
                  child: Form(
                    child: Column(
                      children: [
                        DefaultTextField(
                          hintText: 'Email',
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                        SizedBox(
                          height: getScreenHeight(20),
                        ),
                        DefaultTextField(
                          hintText: 'Password',
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                        SizedBox(
                          height: getScreenHeight(70),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: kSecondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DefaultButton(
                          buttonText: 'Sign in',
                          backgroundColor: kSecondaryColor,
                          textColor: Colors.white,
                          borderColor: Colors.transparent,
                          onTap: () async {
                            try {
                              final user =
                                  await _auth.signInWithEmailAndPassword(
                                      email: email, password: password);
                              if (user != null) {
                                Navigator.pushNamed(context, QuestionScreen.id);
                              }
                            } catch (e) {
                              print(e);
                            }
                          },
                        ),
                        SizedBox(
                          height: getScreenHeight(40),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getScreenHeight(5)),
                            child: Center(
                              child: Text(
                                'or',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DefaultButton(
                          buttonText: 'Create Account',
                          borderColor: kSecondaryColor,
                          textColor: kSecondaryColor,
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
      ),
    );
  }
}
