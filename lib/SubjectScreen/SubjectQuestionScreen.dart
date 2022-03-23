import 'package:flutter/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:sygne_quiz/OtherScreens/MenuScreen.dart';
import 'package:sygne_quiz/OtherScreens/NotificationScreen.dart';
import 'package:sygne_quiz/SubjectScreen/SubjectQuestionWrongScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
  ));
}

class SubjectQuestionScreen extends StatefulWidget {
  @override
  _SubjectQuestionScreenState createState() => _SubjectQuestionScreenState();
}

class _SubjectQuestionScreenState extends State<SubjectQuestionScreen> {
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
                      onTap: () {},
                      child: Text(
                        '< Mathematics',
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
          Color(0xFFffffff),
          Color(0xFFffffff),
          Color(0xFFffffff),
        ])),
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                //========================

                Image.asset(
                  'images/timer.png',
                  height: 160,
                  width: 250,
                ),

                Container(
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    gradient: LinearGradient(colors: [
                      Color(0xFF1A237E),
                      Color(0xFF0D47A1),
                      Color(0xFF01579B),
                    ]),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(45, 20, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Question 1 out of 10',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Quicksand',
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(45, 3, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'One day, at noon, in Maseru, the',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(45, 3, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'temperature was 17 C. At midnight the',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(45, 3, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'temperature was 20 C lower',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(45, 20, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Work out the temperature at midnight',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SubjectQuestionWrongScreen()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFFffffff),
                                      Color(0xFFffffff),
                                      Color(0xFFffffff),
                                    ])),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                '80 degrees',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontFamily: 'Quicksand',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SubjectQuestionWrongScreen()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFFffffff),
                                      Color(0xFFffffff),
                                      Color(0xFFffffff),
                                    ])),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                '60 degrees',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontFamily: 'Quicksand',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SubjectQuestionWrongScreen()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFFffffff),
                                      Color(0xFFffffff),
                                      Color(0xFFffffff),
                                    ])),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                '87 degrees',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontFamily: 'Quicksand',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
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
