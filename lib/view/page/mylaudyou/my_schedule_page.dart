import 'package:flutter/material.dart';

// 스케줄 관리
class MySchedulePage extends StatefulWidget {
  static String routeName = "my_schedule";

  const MySchedulePage({Key? key}) : super(key: key);

  @override
  _MySchedulePageState createState() => _MySchedulePageState();
}

class _MySchedulePageState extends State<MySchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("일정 관리"),
      ),
    );
  }
}
