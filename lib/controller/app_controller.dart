import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

import '../config.dart';

class AppController extends GetxController {
  static AppController get to => Get.find();

  final Rxn<RemoteMessage> message = Rxn<RemoteMessage>();

  Future<bool> initialize() async {
    // Android 에서는 별도의 확인 없이 리턴되지만, requestPermission()을 호출하지 않으면 수신되지 않는다.
    NotificationSettings settings =
        await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }

    String? token = await FirebaseMessaging.instance.getToken();
    print("token=${token}");

    // iOS foreground에서 heads up display 표시를 위해 alert, sound true로 설정
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    // Android용 새 Notification Channel
    const AndroidNotificationChannel androidNotificationChannel =
        AndroidNotificationChannel(
      'high_importance_channel', // 임의의 id
      'High Importance Notifications', // 설정에 보일 채널명
      description:
          'This channel is used for important notifications.', // 설정에 보일 채널 설명
      importance: Importance.max,
    );

    // Notification Channel을 디바이스에 생성
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(androidNotificationChannel);

    // FlutterLocalNotificationsPlugin 초기화. 이 부분은 notification icon 부분에서 다시 다룬다.
    await flutterLocalNotificationsPlugin.initialize(
        const InitializationSettings(
            android: AndroidInitializationSettings('@mipmap/ic_launcher'),
            iOS: IOSInitializationSettings()),
        onSelectNotification: (String? payload) async {});

    FirebaseMessaging.onMessage.listen((RemoteMessage rm) {
      message.value = rm;
      RemoteNotification? notification = rm.notification;
      AndroidNotification? android = rm.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          0,
          notification.title,
          notification.body,
          const NotificationDetails(
            android: AndroidNotificationDetails(
              'high_importance_channel', // 임의의 id
              'High Importance Notifications', // 설정에 보일 채널명
              channelDescription:
                  'This channel is used for important notifications.', // 설정에 보일 채널 설명
              // other properties...
            ),
          ),
        );
      }
    });
    return true;
  }
}
