import 'package:flutter/material.dart';
import 'package:sygne_quiz/LandScreens/LandScreen.dart';

import 'package:sygne_quiz/Screens/SignUpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  late bool passwordVisible;
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  Widget build(BuildContext context) {
    return Scaffold(
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
                Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Amsterdam",
                  ),
                ),

                SizedBox(
                  height: 60,
                ),

                Image.asset(
                  'assets/images/Logo.png',
                  height: 100,
                ),
                SizedBox(
                  height: 40,
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 290,
                        margin: const EdgeInsets.all(0.0),
                        child: TextField(
                          // controller: email,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w200,
                          ),
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon: Icon(
                              Icons.mail_outlined,
                              size: 15,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Container(
                        width: 290,
                        margin: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          //  controller: pasword,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w200,
                          ),
                          obscureText: passwordVisible,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock_outlined,
                                size: 15,
                              ),
                              suffixIcon: IconButton(
                                iconSize: 15,
                                icon: Icon(
                                  passwordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                ),
                                onPressed: () {
                                  setState(() {
                                    passwordVisible = !passwordVisible;
                                  });
                                },
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forget Password?',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quickand',
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LandScreen()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 290,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF21bf73),
                                    Color(0xFF21bf73),
                                    Color(0xFF21bf73),
                                  ])),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //  loading ? circularProgress() :
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text(
                    'New user? Just register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
