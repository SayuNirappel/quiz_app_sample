import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app_sample/view/quiz_screen/quiz_screen.dart';

void main() {}

class CorrectSplash extends StatefulWidget {
  const CorrectSplash({super.key});

  @override
  State<CorrectSplash> createState() => _CorrectSplashState();
}

class _CorrectSplashState extends State<CorrectSplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          (context), MaterialPageRoute(builder: (context) => QuizScreen()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check,
              color: Colors.white,
              size: 60,
            ),
            Text(
              "+1",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 80),
            )
          ],
        ),
      ),
    );
  }
}
