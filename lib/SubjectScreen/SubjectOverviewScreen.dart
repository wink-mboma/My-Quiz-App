import 'package:flutter/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:sygne_quiz/LandScreens/LandScreen.dart';
import 'package:sygne_quiz/OtherScreens/MenuScreen.dart';
import 'package:sygne_quiz/OtherScreens/NotificationScreen.dart';
import 'package:sygne_quiz/SubjectScreen/SubjectReadyScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
  ));
}

class SubjectScreen extends StatefulWidget {
  @override
  _SubjectScreenState createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
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
                SizedBox(
                  height: 15,
                ),

                Image.asset(
                  'images/maths.jpg',
                  height: 120,
                  width: 120,
                ),

                Container(
                  height: 50,
                  width: 310,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 20.0,
                          color: Colors.amber,
                        ),
                        Text(
                          '5.0',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 20,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ]),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Cambridge IGCSE Mathematics 0580',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Quicksand',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                BottomSection()
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

class BottomSection extends StatefulWidget {
  @override
  _BottomSectionState createState() => new _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection>
    with TickerProviderStateMixin {
  late List<Tab> _tabs;
  late List<Widget> _pages;
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _tabs = [
      new Tab(
        text: 'Subject Overview',
      ),
      new Tab(text: 'Quizzes'),
    ];
    _pages = [
      Gallery(),
      Skills(),
    ];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: new Column(
        children: <Widget>[
          new TabBar(
            controller: _controller,
            tabs: _tabs,
            labelColor: Theme.of(context).accentColor,
            indicatorColor: Theme.of(context).accentColor,
          ),
          new SizedBox.fromSize(
            size: const Size.fromHeight(2000.0),
            child: new TabBarView(
              controller: _controller,
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        width: 500,
        height: 2500,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF1A237E),
          Color(0xFF0D47A1),
          Color(0xFF01579B),
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(
                'All candidates will tudt the following topics:',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand',
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ': Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 12,
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
                    'Algebra',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ': Algebra, Graphs and Coordinates Geometry',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 12,
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
                    'Shape ans space',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ': Geometry, Mensuration, Trigonometry',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 12,
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
                    'Probability and Statistics',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ': Probability and statistics',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 12,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    indent: 30,
                    endIndent: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        width: 500,
        height: 2500,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF1A237E),
          Color(0xFF0D47A1),
          Color(0xFF01579B),
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(
                'Questions on the quizzes are taken from IGCSE past paper',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Quicksand',
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                'Each quiz is based on a topic from the subject syllabus and contains 10 questions on both Core and Extended structure ',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Quicksand',
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                'Questions are timed based on the difficulty of the question ',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Quicksand',
                  fontSize: 15,
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              indent: 30,
              endIndent: 30,
            ),
            Container(
              height: 200,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            image: DecorationImage(
                                image: AssetImage('images/geography.png'),
                                fit: BoxFit.fitHeight)),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Numbers',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Measured',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ReadyScreen()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xff99daf8),
                                            Color(0xff99daf8),
                                            Color(0xff99daf8),
                                          ])),
                                  child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      'Take Quiz -->',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            image: DecorationImage(
                                image: AssetImage('images/maths.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Numbers',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Measured',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ReadyScreen()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xff99daf8),
                                            Color(0xff99daf8),
                                            Color(0xff99daf8),
                                          ])),
                                  child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      'Take Quiz -->',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            image: DecorationImage(
                                image: AssetImage('images/business.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Numbers',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Measured',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ReadyScreen()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xff99daf8),
                                            Color(0xff99daf8),
                                            Color(0xff99daf8),
                                          ])),
                                  child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      'Take Quiz -->',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
