import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/controller/question_controller.dart';
import 'package:laudyou_app/domain/question/question.dart';
import 'package:laudyou_app/main.dart';
import 'package:laudyou_app/view/page/main_home_page.dart';

class QuestionHomePage extends StatelessWidget {
  final String expression;
  final String operation;
  QuestionHomePage(
      {Key? key, required this.expression, required this.operation})
      : super(key: key);

  QuestionController _controller = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    List<String> arrExpr = expression.split("=");

    RegExp exp = RegExp(r'([-|\\+|\\*|\\/|\\+)])');
    final matches = exp.allMatches(arrExpr[0]);

    var oper = "";
    if (matches.isNotEmpty) {
      oper = arrExpr[0].substring(matches.first.start, matches.first.end);
    }
    matches.forEach((match) {
      oper = arrExpr[0].substring(match.start, match.end);
    });
    List<String> leftExpr = arrExpr[0].split(RegExp("\\-|\\+|\\*|\\/|\\+"));
    String rightExpr = arrExpr[1];

    print("$leftExpr = $rightExpr");
    print(leftExpr);
    //print(leftExpr.split("-|+")[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("한자리 입력 $expression"),
        actions: [
          IconButton(
            icon: const Icon(Icons.pie_chart),
            tooltip: '종료',
            onPressed: () => {
              Get.offAll(() => MainHomePage(title: "제목")),
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //color: Colors.amber,
          //child: _basicColum(),
          children: [
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("이전 문제")),
                Spacer(),
                ElevatedButton(
                    onPressed: () {
                      Question? question = _controller.next();
                      if (question != null) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    QuestionHomePage(
                                        expression: question.expression,
                                        operation: question.operation)));

                        // Get.to(() => QuestionHomePage(
                        //     expression: question.expression,
                        //     operation: question.operation));
                        print(question.expression);
                      }
                    },
                    child: Text("다음 문제")),
              ],
            ),
            Expanded(
                child: _basicCalculate(
                    operation: operation,
                    leftExpr: leftExpr,
                    rightExpr: rightExpr,
                    oper: oper)),
          ],
          //child: _boxPlusMinus(operation, leftExpr, rightExpr),
        ),
      ),
    );
  }

  Column _basicColum(
      {required List<String> leftExpr,
      required String rightExpr,
      required String oper}) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(leftExpr[0], style: _textStyleSpacing),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //   child: Text("0", style: _textStyle),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //   child: Text("8", style: _textStyle),
              // ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(oper, style: _textStyleSpacing),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(leftExpr[1], style: _textStyleSpacing),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //   child: Text("0", style: _textStyle),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //   child: Text("8", style: _textStyle),
              // ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Container(
              width: double.infinity,
              color: Colors.white30,
              child: Text("OCR 영역!!"),
            ),
          ),
        )
      ],
    );
  }

  final _random = Random();
  int next(int min, int max) => min + _random.nextInt(max - min);
  var calcType = ["colum", "row"];

  // 기본 연산
  Widget _basicCalculate(
      {required String operation,
      required List<String> leftExpr,
      required String rightExpr,
      String oper = ""}) {
    print("oper=$oper");
    String displayType = calcType[next(0, calcType.length)];
    print('displayType=' + displayType);

    if (operation == 'minus') {
      return _basicRow(leftExpr: leftExpr, rightExpr: rightExpr, oper: oper);
    } else {
      return _basicColum(leftExpr: leftExpr, rightExpr: rightExpr, oper: oper);
    }
  }

  Column _basicRow(
      {required List<String> leftExpr,
      required String rightExpr,
      required String oper}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(leftExpr[0], style: _textStyle),
              Text(oper, style: _textStyle),
              Text(leftExpr[1], style: _textStyle),
              Text("=", style: _textStyle),
              Text("□", style: _textStyle),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            color: Colors.white30,
            child: Text("OCR 영역!!"),
          ),
        ),
      ],
    );
  }

  // Widget _basicCalc() {
  //   return
  // }

  Widget _boxPlusMinus(
      String operation, List<String> leftExpr, String rightExpr) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (operation == 'minus') ...[
          _boxOne(leftExpr),
          _boxTwo(leftExpr, rightExpr)
        ],
        if (operation == 'plus') ...[
          _boxTwo(leftExpr, rightExpr),
          _boxOne(leftExpr)
        ]
      ],
    );
  }

  Expanded _boxTwo(List<String> leftExpr, String rightExpr) {
    return Expanded(
      flex: 6,
      child: Row(
        children: [
          Expanded(
            child: _boxArea(text: leftExpr[1]),
          ),
          Expanded(child: _boxArea(text: rightExpr, color: Colors.white)),
        ],
      ),
    );
  }

  Expanded _boxOne(List<String> leftExpr) {
    return Expanded(
      child: _boxArea(text: leftExpr[0]),
      flex: 5,
    );
  }
}

TextStyle _textStyle =
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 60);

TextStyle _textStyleSpacing = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 60, letterSpacing: 50);

/*
Container(
                        alignment: Alignment.center,
                        child: Text("2",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 60)),
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                  //                   <--- left side
                                  color: Colors.blue,
                                  width: 3.0,
                                ),
                                top: BorderSide(
                                  //                    <--- top side
                                  color: Colors.blue,
                                  width: 3.0,
                                ),
                                // right: BorderSide(
                                //   //                    <--- top side
                                //   color: Colors.black,
                                //   width: 3.0,
                                // ),
                                bottom:
                                    BorderSide(color: Colors.blue, width: 3))),
                      )
 */

Widget _boxArea({String text = '', Color color = Colors.white70}) {
  return Container(
    alignment: Alignment.center,
    child: Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 2),
      color: color,
    ),
  );
}
