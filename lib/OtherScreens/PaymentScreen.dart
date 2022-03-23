import 'package:flutter/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:sygne_quiz/LandScreens/LandScreen.dart';
import 'package:sygne_quiz/OtherScreens/MenuScreen.dart';
import 'package:sygne_quiz/OtherScreens/NotificationScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: PaymentScreen(),
  ));
}

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                        '< Payment',
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
                  height: 30,
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Make payment',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Select payment method of your choice',
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
                  height: 30,
                ),

                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset('images/airtelmoney.png'),
                        Image.asset('images/paypal.png'),
                        Image.asset('images/visa.png'),
                      ]),
                ),

                SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Order Summary',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(2)),
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: 'Quicksand',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cambridge IGSCE Mathematics (0580)',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'By Vincent Kanyongo ',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'MKW 5000',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 15,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontFamily: 'Big Caslon',
                                        fontSize: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(0)),
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Total',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Quicksand',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(0)),
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'MWK 5000',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 15,
                                        color: Colors.black26,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '  ',
                                style: TextStyle(
                                  fontFamily: 'Big Caslon',
                                  fontSize: 15,
                                  color: Colors.black26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '  ',
                                style: TextStyle(
                                  fontFamily: 'Big Caslon',
                                  fontSize: 15,
                                  color: Colors.black26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Divider(
                        color: Colors.black54,
                        endIndent: 15,
                        indent: 15,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Steps for  payment for using Airtel Money ',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1. On your airtel mobile phone. dial *211# ',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '2. Select 3, Make payments ',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '3. Select 1, Make payments ',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '4. Select 8, Others ',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '5. On the Nickname, type "Ct2m"',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '6. Then enter amount and click send "',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '7. Finally, on reference, write your (Name-surname',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(53, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Coursename)',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Quicksand',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: Colors.black54,
                        endIndent: 15,
                        indent: 15,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Payable amount',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 330,
                        height: 30,
                        margin: const EdgeInsets.all(0.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                            ),
                            filled: true,
                            labelText: '5000',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Document of your payment()',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 330,
                        height: 30,
                        margin: const EdgeInsets.all(0.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                            ),
                            filled: true,
                            labelText: 'Choose File..  No file chosen',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(
//
                                //   builder: (context)=>

                                //    HomePage()
                                //  )

                                //   );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    gradient: LinearGradient(colors: [
                                      Color(0xFF20B2AA),
                                      Color(0xFF20B2AA),
                                      Color(0xFF20B2AA),
                                    ])),
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    'Make payment',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Quicksand',
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              child: Container(
                                alignment: Alignment.topLeft,
                                width: 330,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    gradient: LinearGradient(colors: [
                                      Color(0xFFe6e6ff),
                                      Color(0xFFe6e6ff),
                                      Color(0xFFe6e6ff),
                                    ])),
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    'Then approve the course purchase',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontFamily: 'Quicksand',
                                        fontSize: 13),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
