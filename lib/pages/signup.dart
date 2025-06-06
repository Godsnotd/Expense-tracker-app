// import 'package:capstone_1/pages/homepage.dart';
import 'package:capstone_1/pages/signin.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'jost'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 5.04, left: 1.51, bottom: 43.96),
                      child: SizedBox(
                          width: 296.01,
                          height: 46,
                          child: Text(
                            'Simplify your expense tracking and gain full control of your finances.',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'jost'),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  width: 392,
                  height: 44,
                  child: TextField(
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.75)),
                    //autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'Fullname',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.75),
                        ),
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                style: BorderStyle.solid,
                                width: 1,
                                color: Color.fromRGBO(248, 248, 248, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
                SizedBox(height: 27),
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
                          contentPadding: EdgeInsets.all(15),
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
                      style:
                          TextStyle(color: Color.fromRGBO(255, 255, 255, 0.75)),
                      decoration: InputDecoration(
                          labelText: 'Password',
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
                SizedBox(height: 24.22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Checkbox(
                          side: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(248, 248, 248, 1)),
                          activeColor: Colors.green,
                          value: isChecked,
                          onChanged: (val) {
                            setState(() {
                              isChecked = val;
                            });
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: SizedBox(
                        width: 280,
                        height: 33,
                        child: Text(
                          'By signing up, you agree to our Terms & Conditions and Privacy Policy',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'jost'),
                        ),
                      ),
                    ),
                    // Text(
                    //   ' Terms &  ',
                    //   style: TextStyle(
                    //       color: Color.fromRGBO(143, 200, 123, 1),
                    //       fontSize: 12,
                    //       fontWeight: FontWeight.w400,
                    //       fontFamily: 'jost'),
                    // ),
                    // Text(
                    //   'Conditions and ',
                    //   style: TextStyle(
                    //       color: Color.fromRGBO(255, 255, 255, 1),
                    //       fontSize: 12,
                    //       fontWeight: FontWeight.w400,
                    //       fontFamily: 'jost'),
                    // ),
                    // Text(
                    //   'Privacy Policy',
                    //   style: TextStyle(
                    //       color: Color.fromRGBO(143, 200, 123, 1),
                    //       fontSize: 12,
                    //       fontWeight: FontWeight.w400,
                    //       fontFamily: 'jost'),
                    // ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 83.78, left: 59.5, right: 39.51),
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
                              'Sign Up',
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
                    top: 85.75,
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',
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
                                  builder: (context) => SigninScreen()));
                        },
                        child: Text('Sign In',
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
