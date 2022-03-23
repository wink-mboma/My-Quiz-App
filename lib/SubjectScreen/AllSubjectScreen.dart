import 'package:flutter/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:sygne_quiz/LandScreens/LandScreen.dart';
import 'package:sygne_quiz/OtherScreens/MenuScreen.dart';
import 'package:sygne_quiz/OtherScreens/NotificationScreen.dart';
import 'package:sygne_quiz/SubjectScreen/MySubjectScreen.dart';
import 'package:sygne_quiz/SubjectScreen/SubjectOverviewScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
  ));
}

class AllSubjectScreen extends StatefulWidget {
  @override
  _AllSubjectScreenState createState() => _AllSubjectScreenState();
}

class _AllSubjectScreenState extends State<AllSubjectScreen> {
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
                                builder: (context) => LandScreen()));
                      },
                      child: Text(
                        '< Subjects',
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
                  height: 30,
                ),

                Container(
                  width: 350,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'All Subjects',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Big Caslon',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MySubjectScreen()));
                          },
                          child: Text(
                            'View my subjects',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ]),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'The app register eleven subjects for the cambrigde',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand',
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
                        'carriculum and ten subjects from MANEB carriculum',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SubjectScreen()));
                                },
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/logygy.png'),
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                              ),
                              Text(
                                'Mathematics',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SubjectScreen()));
                                },
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/loggy.png'),
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                              ),
                              Text(
                                'English',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SubjectScreen()));
                                },
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/logyggy.png'),
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                              ),
                              Text(
                                'Physics',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SubjectScreen()));
                                },
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/logy.png'),
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                              ),
                              Text(
                                'Biology',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SubjectScreen()));
                                },
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/logyyy.png'),
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                              ),
                              Text(
                                'Chemistry',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SubjectScreen()));
                                },
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/logyy.png'),
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                              ),
                              Text(
                                'Business',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SubjectScreen()));
                                },
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/accounting.png'),
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                              ),
                              Text(
                                'Accounting',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SubjectScreen()));
                                },
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/economics.png'),
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                              ),
                              Text(
                                'Economics',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SubjectScreen()));
                                },
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/history.png'),
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                              ),
                              Text(
                                'History',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                  Color(0xFFffffff),
                                ])),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SubjectScreen()));
                                },
                                child: Container(
                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage('images/ict.png'),
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                              ),
                              Text(
                                'Ict',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Quizzes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
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
