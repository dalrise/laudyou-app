import 'package:get/get.dart';
import 'package:laudyou_app/domain/question/question.dart';
import 'package:laudyou_app/models/mode_question.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:laudyou_app/view/page/question/question_home_page.dart';

class QuestionController extends GetxController {
  final RxList<Question> _items = <Question>[].obs;
  final _question = Question("", "").obs;

  final _currentIndex = 0.obs;

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  get question => _question.value;

  get currentIndex {
    return _currentIndex;
  }

  Question? next() {
    if (_items.length - 1 == _currentIndex.value) {
      return null;
    }
    _currentIndex.value++;

    _question.value = _items[_currentIndex.value];

    return _items[_currentIndex.value];
  }

  void initData() {
    _items.addAll([
      Question.fromJson({'expression': '2+2=4', 'operation': 'plus'}),
      Question.fromJson({'expression': '12+2=14', 'operation': 'plus'}),
      Question.fromJson({'expression': '22-2=14', 'operation': 'minus'}),
      Question.fromJson({'expression': '32-2=24', 'operation': 'minus'}),
      Question.fromJson({'expression': '42+22=44', 'operation': 'plus'}),
      Question.fromJson({'expression': '52+22=34', 'operation': 'plus'}),
      Question.fromJson({'expression': '62-2=24', 'operation': 'minus'}),
    ]);
  }

  load() async {
    //print(_question.value);

    _currentIndex.value = 0;
    _question.value = _items[_currentIndex.value];

    Get.to(() => QuestionHomePage(
        expression: _question.value.expression,
        operation: _question.value.operation));

    /*
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

     */
  }
}
