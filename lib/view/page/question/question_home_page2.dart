import 'package:flutter/material.dart';
import 'dart:math';

import 'package:laudyou_app/domain/question/question.dart';

class QuestionHomePage2 extends StatefulWidget {
  final String expression;
  final String operation;

  const QuestionHomePage2(
      {Key? key, required this.expression, required this.operation})
      : super(key: key);

  @override
  _QuestionHomePage2State createState() => _QuestionHomePage2State();
}

class _QuestionHomePage2State extends State<QuestionHomePage2> {
  List<Question> questions = [
    Question.fromJson({'expression': '2+2=4', 'operation': 'plus'}),
    Question.fromJson({'expression': '12+2=14', 'operation': 'plus'}),
    Question.fromJson({'expression': '22-2=14', 'operation': 'minus'}),
    Question.fromJson({'expression': '32-2=24', 'operation': 'minus'}),
    Question.fromJson({'expression': '42+22=44', 'operation': 'plus'}),
    Question.fromJson({'expression': '52+22=34', 'operation': 'plus'}),
    Question.fromJson({'expression': '62-2=24', 'operation': 'minus'}),
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
