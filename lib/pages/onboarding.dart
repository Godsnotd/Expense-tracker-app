import 'package:capstone_1/pages/signup.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key, required this.title});
  final String title;
  @override
  State<FirstScreen> createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(29, 27, 40, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "./assets/logo.png",
              height: 87.28,
              width: 87.28,
            ),
            SizedBox(height: 8),
            SizedBox(
                width: 125,
                height: 35,
                child: Text(
                  'Pennysense',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'jost'),
                )),
            Padding(
              padding:
                  EdgeInsets.only(top: 178, left: 43, right: 43, bottom: 143.5),
              child: SizedBox(
                width: 197,
                height: 46,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: Color.fromRGBO(36, 106, 253, 1),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SignupScreen()));
                    },
                    child: Center(
                        child: Text(
                      'Start here',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Jost',
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
