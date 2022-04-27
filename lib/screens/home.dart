import "package:flutter/material.dart";
import 'package:quiz/widgets/question_box.dart';
import 'package:quiz/models/data.dart';
import 'package:quiz/widgets/answer_box.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var questionIndex = 0;
  var userTotal = 0;
  var isDone = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Text(
            "Quiz app",
            style: TextStyle(fontSize: 22),
          ),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          centerTitle: true,
        ),
        body: SafeArea(
          child: isDone
              ? Center(
                  child: Text("$userTotal / $questionTotal", style: const TextStyle(color: Colors.white, fontSize: 20),),
                )
              :  Column(
            children: [
              Expanded(
                child: QuestionBox(
                  question: questions[questionIndex].question,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ...questions[questionIndex]
                  .answers
                  .map((answer) => GestureDetector(
                        child: AnswerBox(answer: answer.answer),
                        onTap: () {
                          setState(() {
                            userTotal += answer.point;
                            if (questionIndex ==
                                questions.length - 1) {
                              isDone = true;
                            } else {
                              questionIndex = questionIndex + 1;
                            }
                          });
                        },
                      ))
                  .toList()
            ],
          ),
        ));
  }
}
