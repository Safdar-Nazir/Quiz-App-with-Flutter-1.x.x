import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app/screens/homepage.dart';
import 'package:quiz_app/screens/resultpage.dart';
import 'package:quiz_app/screens/searchpage.dart';
import 'package:quiz_app/screens/userpage.dart';
import 'package:quiz_app/services/size_config.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'homescreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onBottomNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    HomePage(),
    SearchPage(),
    ResultPage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig _sizeConfig = SizeConfig();
    _sizeConfig.init(context);
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffF8F8F8),
        iconSize: getScreenHeight(24),
        elevation: 5,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidChartBar),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'Home',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onBottomNavTap,
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      ),
    );
  }
}
