import 'package:flutter/material.dart';
import 'package:quiz_app_sample/dummy_counter.dart';
import 'package:quiz_app_sample/dummy_db.dart';
//import 'package:quiz_app_sample/model/question_model/question_model.dart';
import 'package:quiz_app_sample/view/result_screen.dart/result_screen.dart';
import 'package:quiz_app_sample/view/splash_screeb/correct_splash.dart';
import 'package:quiz_app_sample/view/splash_screeb/wrong_splash.dart';

void main() {}

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    super.key,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  DummyDb db1 = DummyDb();
  Flagcounter fc = Flagcounter();

  int limit = 10;
  @override
  Widget build(BuildContext context) {
    int flag = fc.fCounter[0];
    int counter = fc.fCounter[1];
    int answercount = fc.fCounter[2];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Text(
            "$counter / 10",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    db1.questions[flag].question,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              spacing: 20,
              children: List.generate(
                  4,
                  (index) => Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              // Verifying result

                              if (index == db1.questions[flag].answerIndex) {
                                answercount++;
                                fc.fCounter[2] = answercount;

                                if (counter < 10) {
                                  counter++;
                                  flag++;
                                  fc.fCounter[0] = flag;
                                  fc.fCounter[1] = counter;

                                  Navigator.pushReplacement(
                                      (context),
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CorrectSplash()));
                                } else {
                                  fc.fCounter[0] = 0;
                                  fc.fCounter[1] = 1;

                                  Navigator.pushReplacement(
                                      (context),
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResultScreen()));
                                }
                              } else {
                                if (counter < 10) {
                                  counter++;
                                  flag++;
                                  fc.fCounter[0] = flag;
                                  fc.fCounter[1] = counter;

                                  Navigator.pushReplacement(
                                      (context),
                                      MaterialPageRoute(
                                          builder: (context) => WrongSplash()));
                                } else {
                                  fc.fCounter[0] = 0;
                                  fc.fCounter[1] = 1;

                                  Navigator.pushReplacement(
                                      (context),
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResultScreen()));
                                }
                              }

                              // Building Next Page
                              // if (counter < 10) {
                              //   counter++;
                              //   flag++;
                              //   fc.fCounter[0] = flag;
                              //   fc.fCounter[1] = counter;

                              //   Navigator.pushReplacement(
                              //       (context),
                              //       MaterialPageRoute(
                              //           builder: (context) => QuizScreen()));
                              // } else {
                              //   fc.fCounter[0] = 0;
                              //   fc.fCounter[1] = 1;

                              //   Navigator.pushReplacement(
                              //       (context),
                              //       MaterialPageRoute(
                              //           builder: (context) => ResultScreen()));
                              // }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  db1.questions[flag].options[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.circle_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
