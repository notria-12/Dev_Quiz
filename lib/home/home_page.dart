import 'package:dev_quiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/home_controller.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/home/widgets/app_bar/app_bar_widget.dart';
import 'package:dev_quiz/home/widgets/level_button/level_button_widget.dart';
import 'package:dev_quiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  @override
  void initState() {
    super.initState();

    homeController.getQuizzes();
    homeController.getUser();

    homeController.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (homeController.state == HomeState.sucess) {
      return Scaffold(
          appBar: AppBarWidget(
            user: homeController.user!,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LevelButtonWidget(
                      label: 'Fácil',
                    ),
                    LevelButtonWidget(
                      label: 'Médio',
                    ),
                    LevelButtonWidget(
                      label: 'Difícil',
                    ),
                    LevelButtonWidget(
                      label: 'Perito',
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Expanded(
                    child: GridView.count(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                  children: homeController.quizzes!
                      .map((e) => QuizCardWidget(
                            title: e.title,
                            completed:
                                "${e.questionAnswered}/${e.questions.length}",
                            percent: e.questionAnswered / e.questions.length,
                          ))
                      .toList(),
                ))
              ],
            ),
          ));
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen)),
        ),
      );
    }
  }
}
