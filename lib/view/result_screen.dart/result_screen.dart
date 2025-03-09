import 'package:flutter/material.dart';
import 'package:quiz_app_sample/dummy_counter.dart';
import 'package:quiz_app_sample/view/quiz_screen/quiz_screen.dart';

void main() {}

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  Flagcounter fcf = Flagcounter();

  @override
  Widget build(BuildContext context) {
    int acount = fcf.fCounter[2];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(25),
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: (acount == 0)
                          ? Colors.grey
                          : (acount == 1)
                              ? Colors.redAccent
                              : Colors.amberAccent,
                      size: 60,
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.star,
                          color:
                              (acount < 5) ? Colors.grey : Colors.amberAccent,
                          size: 90,
                        ),
                        SizedBox(
                          height: 60,
                        )
                      ],
                    ),
                    Icon(
                      Icons.star,
                      color: (acount < 9) ? Colors.grey : Colors.amberAccent,
                      size: 60,
                    )
                  ],
                ),
              ),
              Text(
                "Congratulations",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Your Score",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "$acount/10",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  fcf.fCounter[2] = 0;
                  Navigator.pushReplacement((context),
                      MaterialPageRoute(builder: (context) => QuizScreen()));
                },
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                            border: Border.all()),
                        child: Icon(
                          Icons.restart_alt,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Retry",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
