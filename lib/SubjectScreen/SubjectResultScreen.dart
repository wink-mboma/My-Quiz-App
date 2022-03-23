import 'package:flutter/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:sygne_quiz/OtherScreens/MenuScreen.dart';
import 'package:sygne_quiz/OtherScreens/NotificationScreen.dart';
import 'package:sygne_quiz/SubjectScreen/SubjectEndQuizScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: SubjectResultScreen(),
  ));
}

class SubjectResultScreen extends StatefulWidget {
  @override
  _SubjectResultScreenState createState() => _SubjectResultScreenState();
}

class _SubjectResultScreenState extends State<SubjectResultScreen> {
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
      appBar: PreferredSize(
          child: SafeArea(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MenuScreen()));
                      },
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.dashboard,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EndQuizScreen()));
                      },
                      child: Text(
                        '< Results',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontFamily: 'Amsterdam',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationScreen()));
                      },
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(100)),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Color(0xFF1A237E),
          Color(0xFF0D47A1),
          Color(0xFF01579B),
        ])),
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                //========================

                SizedBox(
                  height: 15,
                ),

                SizedBox(
                  height: 50,
                ),

                Container(
                  height: 50,
                  width: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    gradient: LinearGradient(colors: [
                      Color(0xFF01579B),
                      Color(0xFF01579B),
                      Color(0xFF01579B),
                    ]),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Answers ',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                ),

                Container(
                  height: 560,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Question 1:',
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Quicksand',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'One day, at noon, in Miseru, the temperature was 17 C ',
                              style: TextStyle(
                                color: Colors.black26,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'at midnight the temperature was 20 C lower',
                              style: TextStyle(
                                color: Colors.black26,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Work out the temperature at midnight',
                              style: TextStyle(
                                color: Colors.black26,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Your answer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '87 degrees',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.close,
                              color: Colors.red,
                              size: 14,
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Correct answer',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '56 degrees',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Question 2:',
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Quicksand',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'One day, at noon, in Miseru, the temperature was 17 C ',
                              style: TextStyle(
                                color: Colors.black26,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'at midnight the temperature was 20 C lower',
                              style: TextStyle(
                                color: Colors.black26,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Work out the temperature at midnight',
                              style: TextStyle(
                                color: Colors.black26,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Your answer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '87 degrees',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 14,
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Correct answer',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '87 degrees',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Question 3:',
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Quicksand',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'One day, at noon, in Miseru, the temperature was 17 C ',
                              style: TextStyle(
                                color: Colors.black26,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'at midnight the temperature was 20 C lower',
                              style: TextStyle(
                                color: Colors.black26,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Work out the temperature at midnight',
                              style: TextStyle(
                                color: Colors.black26,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Your answer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '87 degrees',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.close,
                              color: Colors.red,
                              size: 14,
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Correct answer',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '     ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: '',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '56 degrees',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Big Caslon',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                //=============
                //     Info
                //=============
              ],
            ),
          ],
        ),
      ),
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
            title: Text('Favorite'),
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

  @override
  void dispose() {
    super.dispose();
  }
}
