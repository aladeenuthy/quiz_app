import 'package:flutter/material.dart';

class AnswerBox extends StatelessWidget {
  final String answer;
  const AnswerBox({Key? key, required this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xfff2f2f2)
      ),
      child: Text(answer, style: const TextStyle(fontSize: 16) ,),
    );
  }
}
