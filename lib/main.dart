import 'package:flutter/material.dart';
import 'package:quiz_app_sample/view/quiz_screen/quiz_screen.dart';
import 'package:quiz_app_sample/view/result_screen.dart/result_screen.dart';
import 'package:quiz_app_sample/view/splash_screeb/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            //ResultScreen()
            SplashScreen()
        //QuizScreen(),
        );
  }
}
