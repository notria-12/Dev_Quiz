import 'package:dev_quiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/app_gradients.dart';
import '../../../core/app_text_styles.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              // decoration: BoxDecoration(gradient: AppGradients.linear),
              child: Stack(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 161,
                    width: double.maxFinite,
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: 'Olá, ',
                            style: AppTextStyles.title,
                            children: [
                              TextSpan(
                                  text: 'Airton Dev',
                                  style: AppTextStyles.titleBold)
                            ])),
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://media-exp1.licdn.com/dms/image/C4E03AQGZq0WLwOFUDw/profile-displayphoto-shrink_200_200/0/1565869990477?e=1624492800&v=beta&t=NPSAOwwFEE6W2U7AvuRumPNQz2wVNACqRtDrIYmcJX4'))),
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment(0.0, 1.0), child: ScoreCardWidget())
                ],
              ),
            ));
}
