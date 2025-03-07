import 'package:flutter/material.dart';

void main() {}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Map> qandA = [
    {
      "question": "What is the capital of France ? ",
      "o1": "Berlin",
      "o2": "Mandrid",
      "o3": "Paris",
      "o4": "Rome",
      "ca": "Paris"
    },
    {
      "question": "Q1",
      "o1": "o1",
      "o2": "o2",
      "o3": "o3",
      "o4": "o4",
      "ca": "o1"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Text(
            "${qandA.length}",
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
          spacing: 20,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    qandA[0]["question"],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      qandA[0]["o1"],
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
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      qandA[0]["o2"],
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
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      qandA[0]["o3"],
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
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      qandA[0]["o4"],
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.circle_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
