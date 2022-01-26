import 'package:shared_preferences/shared_preferences.dart';

setJwtToken(String token) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString("token", token);
}

Future<String> getJwtToken() async {
  final prefs = await SharedPreferences.getInstance();
  var value = prefs.getString("token") ?? "";
  return value;
}
