import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:laudyou_app/routes.dart';
import 'package:laudyou_app/services/theme_service.dart';
import 'package:laudyou_app/theme.dart';
import 'package:laudyou_app/view/page/splash/splash_page.dart';

import 'config.dart';
import 'controller/app_controller.dart';
import 'environment.dart';

void main() async {
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
  await GetStorage.init();
  configFirebase();
  configLoading();
  checkLoginToken();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  //final AppController c = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      routes: route,
      builder: EasyLoading.init(),
    );
  }
}
