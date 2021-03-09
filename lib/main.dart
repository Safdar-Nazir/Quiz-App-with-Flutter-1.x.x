import 'package:flutter/material.dart';
import 'package:quiz_app/screens/create_account.dart';
import 'package:quiz_app/screens/homepage.dart';
import 'package:quiz_app/screens/homescreen.dart';
import 'package:quiz_app/screens/login_with_email.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizaholic',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginWithEmail.id: (context) => LoginWithEmail(),
        CreateAccount.id: (context) => CreateAccount(),
        QuestionScreen.id: (context) => QuestionScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
