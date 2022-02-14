import 'package:shared_preferences/shared_preferences.dart';

setFirstInstall(bool install) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool("firstInstall", install);
}

getFirstInstall() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool("firstInstall") ?? true;
}

setJwtToken(String token) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString("token", token);
}

Future<String> getJwtToken() async {
  final prefs = await SharedPreferences.getInstance();
  var value = prefs.getString("token") ?? "";
  return value;
}
