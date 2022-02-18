class QuestionCate {
  final int id;
  final String text;
  bool checked = false;
  bool isBuy = false;

  QuestionCate(
      {required this.id,
      required this.text,
      this.checked = false,
      this.isBuy = false});
}

final List<QuestionCate> questionCateList1 = [
  QuestionCate(id: 1, text: '초등 1학년 덧셈과 뺄셈', checked: false),
  QuestionCate(id: 2, text: '초등 2학년 덧셈과 뺄셈', checked: false, isBuy: true),
  QuestionCate(id: 3, text: '초등 3학년 덧셈과 뺄셈', checked: false),
];

final List<QuestionCate> questionCateList2 = [
  QuestionCate(id: 1, text: '초등 1학년 영어', checked: false),
  QuestionCate(id: 2, text: '초등 2학년 영어', checked: false),
  QuestionCate(id: 3, text: '초등 3학년 영어', checked: false),
];

final List<QuestionCate> questionCateList3 = [
  QuestionCate(id: 1, text: '초등 1학년 사자성어', checked: false),
  QuestionCate(id: 2, text: '초등 2학년 사자성어', checked: false),
  QuestionCate(id: 3, text: '초등 3학년 사자성어', checked: false),
];
