import 'package:capstone_1/pages/signin.dart';
import 'package:flutter/material.dart';

class FogotPassword extends StatefulWidget {
  const FogotPassword({super.key});

  @override
  State<FogotPassword> createState() => _FogotPasswordState();
}

class _FogotPasswordState extends State<FogotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(29, 27, 40, 1),
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 85, horizontal: 18),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  SizedBox(
                      // width: 392,
                      // height: 35,
                      child: Text(
                    'Fogot Password',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ]),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 5.04, left: 1.51, right: 10.51),
                      child: SizedBox(
                          width: 310,
                          height: 43,
                          child: Text(
                            "Don't worry! We’ll help you get back on track,Enter your registered email address",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 20.96),
                SizedBox(
                    width: 392,
                    height: 44,
                    child: TextField(
                      style:
                          TextStyle(color: Color.fromRGBO(255, 255, 255, 0.75)),
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.75),
                          ),
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(248, 248, 248, 1)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                    )),
                Padding(
                  padding:
                      EdgeInsets.only(top: 27.97, left: 1.51, right: 10.51),
                  child: SizedBox(
                      width: 310,
                      height: 43,
                      child: Text(
                        "We’ll send you a link to reset your password",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120, left: 15, right: 15),
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
                                      builder: (context) => SigninScreen()));
                            },
                            child: Center(
                                child: Text(
                              'Reset Password',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
