import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Future<void> save_firstinstall() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("firstinstall", true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('메인 화면'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
              width: double.maxFinite,
              height: 80,
              color: Colors.red,
              alignment: Alignment.center,
              child: Text(
                'DashBoard',
                style: const TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: save_firstinstall,
            child: Text('로그인'),
          ),
        ],
      ),
    );
  }
}
