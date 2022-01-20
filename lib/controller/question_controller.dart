import 'package:get/get.dart';
import 'package:laudyou_app/models/mode_question.dart';

class QuestionController extends GetxController {
  final RxList<QuestionBank> _items = QuestionBank.formMap({}).obs;
}
