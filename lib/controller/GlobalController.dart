import 'package:get/get.dart';

class GlobalController extends GetxController {
  final _isFirstInstall = true.obs;
  final _isParent = false.obs;

  void setParent() {
    _isParent.value = true;
  }

  bool get getParent {
    return _isParent.value;
  }

  void setFirstInstall() {
    _isFirstInstall.value = false;
  }

  bool get firstInstall {
    return _isFirstInstall.value;
  }
}
