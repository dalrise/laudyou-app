import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'dart:async';

class BackgroundController extends GetxController {
  var title = "Stop Service".obs;

  void setTitle(String str) {
    title.value = str;
  }

  /*
  Future<void> initializeService() async {
    final service = FlutterBackgroundService();
    await service.configure(
      androidConfiguration: AndroidConfiguration(
        onStart: onStartService,
        autoStart: true,
        isForegroundMode: true,
      ),
      iosConfiguration: IosConfiguration(
          autoStart: true,
          onForeground: onStartService,
          onBackground: onIosBackground),
    );

    print('-------------------');
    print(service);
    print('-------------------');

    //onStartService();
  }

  void onIosBackground() {
    WidgetsFlutterBinding.ensureInitialized();
    print('FLUTTER BACKGROUND FETCH');
  }

  void onStartService() {
    print('onStartService!!!');
    //WidgetsFlutterBinding.ensureInitialized();
    final service = FlutterBackgroundService();
    service.onDataReceived.listen((event) {
      print('service.onDataReceived start');
      print(event);
      print('service.onDataReceived end');
      if (event!['action'] == 'setAsForeground') {
        service.setForegroundMode(true);
        return;
      }
      if (event["action"] == "setAsBackground") {
        service.setForegroundMode(false);
      }

      if (event["action"] == "stopService") {
        service.stopBackgroundService();
      }
    });

    // bring to foreground
    service.setForegroundMode(true);
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (!(await service.isServiceRunning())) timer.cancel();
      service.setNotificationInfo(
        title: 'Dalrise App Service',
        content: 'Updated at ${DateTime.now()}',
      );

      service.sendData(
        {"current_date": DateTime.now().toIso8601String()},
      );
    });
  }

   */
}
