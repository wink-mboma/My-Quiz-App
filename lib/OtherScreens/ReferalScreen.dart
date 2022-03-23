import 'package:flutter/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:sygne_quiz/LandScreens/LandScreen.dart';
import 'package:sygne_quiz/OtherScreens/MenuScreen.dart';
import 'package:sygne_quiz/OtherScreens/NotificationScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: ReferalScreen(),
  ));
}

class ReferalScreen extends StatefulWidget {
  @override
  _ReferalScreenState createState() => _ReferalScreenState();
}

class _ReferalScreenState extends State<ReferalScreen> {
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
                        'Refer a freind',
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
                  'images/referal.png',
                ),

                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.topLeft, colors: [
                    Color(0xFF1A237E),
                    Color(0xFF0D47A1),
                    Color(0xFF01579B),
                  ])),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Refer a friend and win K 500!',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            fontFamily: 'Quicksand',
                          ),
                        )
                      ]),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'http://knowitall.com/ref...',
                        style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Copy link',
                        style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Quicksand',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black54,
                  indent: 40,
                  endIndent: 40,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share with loved ones',
                        style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Icon(
                        Icons.share,
                        size: 20,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),

                Container(
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.topLeft, colors: [
                    Color(0xFF1A237E),
                    Color(0xFF0D47A1),
                    Color(0xFF01579B),
                  ])),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'How it works',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CircleAvatar(
                          maxRadius: 20,
                          backgroundColor: Colors.white,
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Share your link',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Copy your unique link or share it directly via',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'text, social media or email',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CircleAvatar(
                          maxRadius: 20,
                          backgroundColor: Colors.white,
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Screenshot',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Take send screenshot of your work',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'send to us',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CircleAvatar(
                          maxRadius: 20,
                          backgroundColor: Colors.white,
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Get your reward',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Our team will contact you and send ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'you your prize money',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ]),
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
