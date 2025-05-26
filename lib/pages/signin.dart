import 'package:capstone_1/pages/homepage.dart';
import 'package:capstone_1/pages/signup.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => SigninScreenState();
}

class SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(29, 27, 40, 1),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  SizedBox(
                      // width: 392,
                      // height: 35,
                      child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'jost'),
                  )),
                ]),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 5.04, left: 1.51, right: 10.51),
                      child: SizedBox(
                          width: 310,
                          height: 23,
                          child: Text(
                            'Track your daily, weekly, and yearly expenses effortlessl',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'jost'),
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 50.96),
                SizedBox(
                    width: 392,
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(248, 248, 248, 1)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                    )),
                SizedBox(height: 27),
                SizedBox(
                    width: 392,
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(248, 248, 248, 1)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                    )),
                SizedBox(height: 14.91),
                SizedBox(
                  // width: 125,
                  // height: 23,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forget Password?',
                        style: TextStyle(
                            color: Color.fromRGBO(143, 200, 123, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'jost'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 170, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 197,
                        height: 46,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(36, 106, 253, 1),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Homepage()));
                            },
                            child: Center(
                                child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'jost',
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 106.75,
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have an account?',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'jost')),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                        },
                        child: Text('Sign Up',
                            style: TextStyle(
                                color: Color.fromRGBO(143, 200, 123, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'jost')),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
