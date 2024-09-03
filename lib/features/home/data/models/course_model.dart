class UnitModel {
  final String name;
  final String img;
  final String description;
  final List<LessonModel> lessons;
  final List<QuizModel> quizes;

  UnitModel(
      {required this.name,
      required this.description,
      required this.img,
      required this.lessons,
      required this.quizes});
}

class LessonModel {
  final String name;
  final String? img;
  final String? videoUrl;
  final String desc;

  LessonModel({
    required this.name,
    this.img,
    this.videoUrl,
    required this.desc,
  });
}

class QuizModel {
  final String question;
  final String img;
  final List<String> options;

  QuizModel({
    required this.question,
    required this.img,
    required this.options,
  });
}
