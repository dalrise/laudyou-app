import 'package:get/get.dart';
import 'package:laudyou_app/models/mode_question.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class QuestionController extends GetxController {
  final RxList<QuestionBank> _items = <QuestionBank>[].obs;

  load() async {
    print('load call!!');
    // https://www.googleapis.com/books/v1/volumes?q=http
    var url =
        Uri.https('laudyou-admin.vercel.app', '/api/question', {'q': '{http}'});
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      //var itemCount = jsonResponse['totalItems'];
      print(jsonResponse);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
