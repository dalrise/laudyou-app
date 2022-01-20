class QuestionBank {
  final int id;
  final String category;
  final String levels;
  final String grade;
  final String title;
  final String subTitle;
  final String quizType;
  final String quizTitle;
  final String extendedData;

  // QuestionBank(this.id, this.category, this.levels, this.grade, this.title,
  //     this.subTitle, this.quizType, this.quizTitle, this.extendedData);
  //

  QuestionBank.formMap(Map<String, dynamic> map)
      : id = map['id'],
        category = map['id'],
        levels = map['id'],
        grade = map['id'],
        title = map['id'],
        subTitle = map['id'],
        quizType = map['id'],
        quizTitle = map['id'],
        extendedData = map['id'];
}
