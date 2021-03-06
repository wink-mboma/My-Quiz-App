import 'package:flutter/material.dart';
import 'package:sygne_quiz/LandScreens/LandScreen.dart';
import 'package:sygne_quiz/OtherScreens/MenuScreen.dart';
import 'package:sygne_quiz/OtherScreens/NotificationScreen.dart';
import 'package:sygne_quiz/OtherScreens/PaymentScreen.dart';
import 'package:sygne_quiz/OtherScreens/ReferalScreen.dart';
import 'package:sygne_quiz/Screens/LoginScreen.dart';
import 'package:sygne_quiz/UserScreens/PasswordChangeScreen.dart';
import 'package:sygne_quiz/UserScreens/ProfileUpateScreen.dart';
import 'package:sygne_quiz/UserScreens/QuizHistoryScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                        '< Profile',
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
                  height: 15,
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_pin,
                              size: 100.0,
                              color: Colors.white,
                            ),
                            Text(
                              'Tim Manguwo',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Cambridge Checkpoint',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 14,
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
                  height: 20,
                ),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Subjects ',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '7',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),

                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Quiz history                             ',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Quicksand',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'View all the quizzes you have taken',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Quicksand',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuizHistoryScreen()));
                          },
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),

                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Statistics',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 17,
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
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Quiz completed',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '12',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Scored',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '87%',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Ranking',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '12/400',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Quiz Duration',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '12 hrs',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Joined',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '12/09/2021',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),

                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Account',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 17,
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
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Email',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'tim.manguwo13@gmail.com',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Username',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Tim Manguwo',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Change password',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PasswordChangeScreen()));
                          },
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Change profile',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProfileUpateScreen()));
                          },
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),

                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Payment Plan                              ',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Quicksand',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Your subscription will expire in 10 months',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Quicksand',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentScreen()));
                          },
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),

                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Refer a freind                            ',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Quicksand',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Win prizeswhen you refer a freind    ',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Quicksand',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReferalScreen()));
                          },
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          ' ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),

                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Text('Logout',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 20,
                                  color: Colors.amber,
                                )),
                          ),
                        ),
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
    );
  }
}
