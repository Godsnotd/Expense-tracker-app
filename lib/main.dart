import 'package:capstone_1/pages/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pennysense',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(29, 27, 40, 1),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(248, 248, 248, 1)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(title: 'Pennysense Tracker App'),
    );
  }
}
