import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:laudyou_app/routes.dart';
import 'package:laudyou_app/theme.dart';
import 'package:laudyou_app/view/page/splash/splash_page.dart';

import 'config.dart';
import 'environment.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  FlavorConfig(
    name: "DEVELOP",
    color: Colors.red,
    location: BannerLocation.bottomStart,
    baseUrl: "http://10.0.2.2:3000/api",
    variables: {
      "counter": 5,
    },
  );

  runApp(const MyApp());
  configLoading();
  checkLoginToken();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      theme: theme(),
      routes: route,
      builder: EasyLoading.init(),
    );
  }
}
