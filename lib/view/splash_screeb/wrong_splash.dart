import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app_sample/view/quiz_screen/quiz_screen.dart';

void main() {}

class WrongSplash extends StatefulWidget {
  const WrongSplash({super.key});

  @override
  State<WrongSplash> createState() => _WrongSplashState();
}

class _WrongSplashState extends State<WrongSplash> {
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
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.close,
              color: Colors.white,
              size: 60,
            ),
            Text(
              "+0",
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
