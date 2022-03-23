import 'package:flutter/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:sygne_quiz/LandScreens/LandScreen.dart';
import 'package:sygne_quiz/OtherScreens/MenuScreen.dart';
import 'package:sygne_quiz/OtherScreens/NotificationScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: ProfileUpateScreen(),
  ));
}

class ProfileUpateScreen extends StatefulWidget {
  @override
  _ProfileUpateScreenState createState() => _ProfileUpateScreenState();
}

class _ProfileUpateScreenState extends State<ProfileUpateScreen> {
  late TextEditingController _pickDateController;
  String _date = '01/01/1999';

  @override
  void initState() {
    super.initState();
    _pickDateController = TextEditingController(text: _date);
  }

  List<String> carriculumn = [
    'Choose Carriculumn',
    'Cambridge',
    'MANEB',
  ];
  List<String> gender = [
    'Choose Gender',
    'Male',
    'Female',
  ];

  List<String> grade = [
    'Choose Grade',
    '1',
    '2',
    '3',
    '4',
  ];

  String selectedIndexcarriculumn = 'Choose Carriculumn';
  String selectedIndexgender = 'Choose Gender';
  String selectedIndexgrade = 'Choose Grade';

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
                  height: 30,
                ),
                //=============
                //     Info
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
                            CircleAvatar(
                              maxRadius: 50,
                              backgroundColor: Colors.white,
                              child: Text(
                                'Add image',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Tim Manguwo',
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

                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Please fill in the information',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'below to complete your profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 15,
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
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 300,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 15,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              labelText: "Choose Carriculumn",
                              suffixIcon: Icon(
                                Icons.arrow_downward_outlined,
                                size: 15,
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 300,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 15,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              labelText: "Choose Grade",
                              suffixIcon: Icon(
                                Icons.arrow_downward_outlined,
                                size: 15,
                              ),
                            ),
                          ),
                        ),

//DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09

                        Container(
                          width: 300,
                          child: RaisedButton(
                            color: Colors.white,
                            child: new Text(
                              'Date of Birth',
                              style: TextStyle(color: Colors.black87),
                            ),
                            onPressed: () async {
                              final date = await showDatePicker(
                                context: context,
                                initialDate: DateTime(1995, 1, 1),
                                firstDate: DateTime(1995, 1, 1),
                                lastDate: DateTime.now(),
                                initialDatePickerMode: DatePickerMode.year,
                                builder: (BuildContext context, Widget? child) {
                                  return Theme(
                                    data: ThemeData(
                                      primaryColor: Colors.blue,
                                      accentColor: Colors.blueAccent,
                                      buttonBarTheme: ButtonBarThemeData(
                                        buttonTextTheme: ButtonTextTheme.accent,
                                      ),
                                    ),
                                    child: child ?? Container(),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 300,
                          child: TextFormField(
                            style: TextStyle(color: Colors.grey),
                            cursorColor: Colors.lightBlueAccent,
                            controller: _pickDateController,
                            readOnly: true,
                          ),
                        ),

                        Container(
                          width: 300,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 15,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              labelText: "Gender",
                              suffixIcon: Icon(
                                Icons.arrow_downward_outlined,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),

                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LandScreen()));
                        },
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Text('Save',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 20,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
