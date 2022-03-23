import 'package:flutter/material.dart';
import 'package:flutter/bottom_navy_bar.dart';
import 'package:sygne_quiz/LandScreens/HomeScreen.dart';
import 'package:sygne_quiz/LandScreens/ProfileScreen.dart';
import 'package:sygne_quiz/LandScreens/SearchScreen.dart';
import 'package:sygne_quiz/LandScreens/WishesSreen.dart';

class LandScreen extends StatefulWidget {
  const LandScreen({Key? key}) : super(key: key);

  @override
  State<LandScreen> createState() => _LandScreenState();
}

class _LandScreenState extends State<LandScreen> {
  @override
  int _currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPages(),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Home'),
            inactiveColor: Colors.black,
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite_outline),
            title: Text('Wishes'),
            activeColor: Colors.red,
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Search',
            ),
            activeColor: Colors.pink,
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Profile'),
            activeColor: Colors.blue,
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buildPages() {
    switch (_currentIndex) {
      case 1:
        return WishesSreen();
      case 2:
        return SearchScreen();
      case 3:
        return ProfileScreen();
      case 0:
      default:
        return HomeScreen();
    }
  }
}
