import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:netflex/state/BackgroundController.dart';

class HomeBackgroundScreen extends StatelessWidget {
  final BackgroundController _background = Get.put(BackgroundController());

  HomeBackgroundScreen({Key? key}) : super(key: key);

  // HomeBackgroundScreen({Key? key}) : super(key: key) {
  //   _background.initializeService();
  // }

  @override
  Widget build(BuildContext context) {
    String text = "Stop Service";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Background Service'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Text('background screen'),
          ),
          StreamBuilder<Map<String, dynamic>?>(
              stream: FlutterBackgroundService().onDataReceived,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                print('StreamBuilder');
                final data = snapshot.data!;
                DateTime? date = DateTime.tryParse(data["current_date"]);
                print(date.toString());
                return Text(date.toString());
              }),
          ElevatedButton(
            onPressed: () {
              FlutterBackgroundService()
                  .sendData({"action": "setAsForeground"});
            },
            child: const Text('Foreground Mode'),
          ),
          ElevatedButton(
            child: const Text("Background Mode"),
            onPressed: () {
              FlutterBackgroundService()
                  .sendData({"action": "setAsBackground"});
            },
          ),
          ElevatedButton(
            child: Obx(() {
              return Text('text : ${_background.title}');
            }),
            onPressed: () async {
              final service = FlutterBackgroundService();
              var isRunning = await service.isServiceRunning();
              print('isRunning:${isRunning}');
              if (isRunning) {
                service.sendData(
                  {"action": "stopService"},
                );
              } else {
                service.start();
              }

              if (!isRunning) {
                text = 'Stop Service';
              } else {
                text = 'Start Service';
              }
              _background.setTitle(text);
              //setState(() {});
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FlutterBackgroundService().sendData({
            "hello": "world",
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
