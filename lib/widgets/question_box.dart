import 'package:flutter/material.dart';

class QuestionBox extends StatelessWidget {
  final String question;
  const QuestionBox({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.deepPurpleAccent),
      child: Text(question, style: const TextStyle(fontSize: 21, color: Colors.white),),
    );
  }
}
