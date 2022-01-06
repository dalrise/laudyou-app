import 'package:flutter/material.dart';
import 'package:netflex/screen/HomeGetScreen.dart';
import 'package:netflex/screen/home_screen.dart';
import 'package:netflex/screen/more_screen.dart';
import 'package:netflex/widget/bottom_bar.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'GetX Status',
      home: HomeGetScreen(),
    );

    /*
    return GetMaterialApp(
      title: "JoFlix",
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              Container(
                child: Center(child: Text("search")),
              ),
              Container(
                child: Center(child: Text("save")),
              ),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );

     */
  }
}
