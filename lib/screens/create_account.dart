import 'package:flutter/material.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/services/constants.dart';
import 'package:quiz_app/services/size_config.dart';
import 'package:quiz_app/widgets/default_button.dart';
import 'package:quiz_app/widgets/default_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login_with_email.dart';

class CreateAccount extends StatefulWidget {
  static const String id = 'register';

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _auth = FirebaseAuth.instance;

  String name, email, password;

  bool _passwordVisible, _confirmpasswordVisible;
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    _confirmpasswordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
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
                      'Sign up',
                      style: TextStyle(
                        fontSize: getScreenWidth(34),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getScreenHeight(10),
                ),
                Form(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getScreenWidth(30),
                    ),
                    child: Column(
                      children: [
                        DefaultTextField(
                          hintText: 'Full name',
                          onChanged: (value) {
                            name = value;
                          },
                        ),
                        SizedBox(
                          height: getScreenHeight(10),
                        ),
                        DefaultTextField(
                          hintText: 'Email',
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                        SizedBox(
                          height: getScreenHeight(10),
                        ),
                        DefaultTextField(
                          hintText: 'Password',
                          obscureText: !_passwordVisible,
                          suffixIcon: _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          iconPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        SizedBox(
                          height: getScreenHeight(10),
                        ),
                        DefaultTextField(
                          hintText: 'Confirm Password',
                          obscureText: !_confirmpasswordVisible,
                          suffixIcon: _confirmpasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          iconPressed: () {
                            setState(() {
                              _confirmpasswordVisible =
                                  !_confirmpasswordVisible;
                            });
                          },
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                        SizedBox(
                          height: getScreenHeight(20),
                        ),
                        DefaultButton(
                            buttonText: 'Create Account',
                            backgroundColor: kSecondaryColor,
                            textColor: Colors.white,
                            borderColor: Colors.transparent,
                            onTap: () async {
                              try {
                                final newUser =
                                    await _auth.createUserWithEmailAndPassword(
                                        email: email, password: password);
                                if (newUser != null) {
                                  Navigator.pushNamed(
                                      context, QuestionScreen.id);
                                }
                              } catch (e) {
                                print(e);
                              }
                            }),
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
                          buttonText: 'Already have an Account?',
                          borderColor: kSecondaryColor,
                          textColor: kSecondaryColor,
                          onTap: () {
                            Navigator.pushNamed(context, LoginWithEmail.id);
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
