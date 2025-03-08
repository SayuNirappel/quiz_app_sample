import 'package:flutter/material.dart';
import 'package:quiz_app_sample/dummy_db.dart';
import 'package:quiz_app_sample/model/question_model/question_model.dart';

void main() {}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  DummyDb data1 = DummyDb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Text(
            "10",
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
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    data1.questions[0].question,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data1.questions[index].options[index],
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.circle_outlined,
                                color: Colors.white,
                              )
                            ],
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
