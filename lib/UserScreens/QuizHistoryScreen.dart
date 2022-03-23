import 'package:flutter/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:sygne_quiz/LandScreens/LandScreen.dart';
import 'package:sygne_quiz/LandScreens/ProfileScreen.dart';
import 'package:sygne_quiz/OtherScreens/MenuScreen.dart';
import 'package:sygne_quiz/OtherScreens/NotificationScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: QuizHistoryScreen(),
  ));
}

class QuizHistoryScreen extends StatefulWidget {
  @override
  _QuizHistoryScreenState createState() => _QuizHistoryScreenState();
}

class _QuizHistoryScreenState extends State<QuizHistoryScreen> {
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
                                builder: (context) => ProfileScreen()));
                      },
                      child: Text(
                        '< Quizhitory',
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
                  height: 25,
                ),

                CircleAvatar(
                  maxRadius: 60,
                  backgroundColor: Colors.white,
                  child: Text(
                    '87%',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Quicksand',
                      fontSize: 40,
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'History',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  height: 580,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Column(children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Biology',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '77%',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Number of quizzes',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Completion time',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '5 mins',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '23/08/2021',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Biology',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '77%',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Number of quizzes',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Completion time',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '5 mins',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '23/08/2021',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Biology',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '77%',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Number of quizzes',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Completion time',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '5 mins',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '23/08/2021',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Biology',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '77%',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Number of quizzes',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Completion time',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '5 mins',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '23/08/2021',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Biology',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '77%',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Number of quizzes',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Completion time',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '5 mins',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '23/08/2021',
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Quicksand',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),

                SizedBox(
                  height: 30,
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
