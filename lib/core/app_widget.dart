// import 'package:dev_quiz/home/home_page.dart';
// import 'package:dev_quiz/splash/splash_page.dart';

import 'package:dev_quiz/splash/splash_page.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}
