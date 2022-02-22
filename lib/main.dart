import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:laudyou_app/routes.dart';
import 'package:laudyou_app/theme.dart';
import 'package:laudyou_app/view/page/splash/splash_page.dart';

import 'config.dart';
import 'environment.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlavorConfig(
    name: "PRODUCTION",
    color: Colors.red,
    location: BannerLocation.bottomStart,
    baseUrl: "https://laudyou-admin.vercel.app/api",
    variables: {
      "counter": 5,
    },
  );
  await GetStorage.init();
  configLoading();
  checkLoginToken();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      theme: theme(),
      darkTheme: ThemeData(
        cupertinoOverrideTheme: const CupertinoThemeData(
          textTheme: CupertinoTextThemeData(), // This is required
        ),
      ),
      routes: route,
      builder: EasyLoading.init(),
    );
  }
}
