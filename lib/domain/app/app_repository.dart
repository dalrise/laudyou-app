import 'package:flutter/foundation.dart';

import 'app_provider.dart';

class AppRepository {
  final AppProvider _appProvider = AppProvider();

  Future<void> addToken(String? token) async {
    String platform = "";
    if (kIsWeb) {
      platform = "web";
    } else if (TargetPlatform.android == TargetPlatform.android) {
      platform = "android";
    } else if (TargetPlatform.iOS == TargetPlatform.iOS) {
      platform = "iOS";
    }
    Map data = {'platform': platform, 'token': token};
    print(data);
    _appProvider.addToken(data);
  }
}
