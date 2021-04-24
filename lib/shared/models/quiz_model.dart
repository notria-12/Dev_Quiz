import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

class QuizModel {
  final String title;
  final List<QuestionModel> question;
  final int questionAnswered;
  final String image;
  final Level level;

  QuizModel(
      {required this.title,
      required this.question,
      this.questionAnswered = 0,
      required this.image,
      required this.level});
}
