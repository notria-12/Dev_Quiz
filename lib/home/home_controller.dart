import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
        name: 'Airton DEV',
        photoUrl:
            'https://media-exp1.licdn.com/dms/image/C4E03AQGZq0WLwOFUDw/profile-displayphoto-shrink_200_200/0/1565869990477?e=1624492800&v=beta&t=NPSAOwwFEE6W2U7AvuRumPNQz2wVNACqRtDrIYmcJX4',
        score: 0);
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
          title: 'NLW 5 Trilha FLutter',
          questionAnswered: 1,
          question: [
            QuestionModel(title: 'Está curtindo Flutter?', answers: [
              AnswerModel(title: 'Estou amando'),
              AnswerModel(title: 'O Flutter é lindo demais'),
              AnswerModel(title: 'Melhor Framework forever'),
              AnswerModel(title: 'Show demais!'),
            ]),
            QuestionModel(title: 'Está curtindo Flutter?', answers: [
              AnswerModel(title: 'Estou amando'),
              AnswerModel(title: 'O Flutter é lindo demais'),
              AnswerModel(title: 'Melhor Framework forever'),
              AnswerModel(title: 'Show demais!'),
            ])
          ],
          image: AppImages.blocks,
          level: Level.facil)
    ];
  }
}
