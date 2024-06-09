import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:yagmur/core/extensions/padding_extension.dart';
import 'package:yagmur/core/extensions/size_extension.dart';
import 'package:yagmur/core/helper/statistic_view_video_game.dart';
import 'package:yagmur/core/helper/text_forms.dart';
import 'package:yagmur/core/widgets/elevated_button_widget.dart';
import 'package:yagmur/core/widgets/progress_indicator.dart';
import 'package:yagmur/core/widgets/text_widget.dart';
import 'package:yagmur/screen/video_games_survey_screen/video_games_survey_screen_model/video_games_survey_screen_model.dart';

import '../../core/constants/color_constants.dart';
import '../../core/widgets/title_text_widget.dart';

class VideoGamesSurveyScreen extends StatelessWidget {
  VideoGamesSurveyScreen({super.key}) {
    reaction((_) async => await _gamesSurveyScreenModel.initialize(), (_) {});
  }
  final VideoGamesSurveyScreenModel _gamesSurveyScreenModel =
      VideoGamesSurveyScreenModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: CustomTitleText(
              title: 'Video Games Survey',
              color: ColorConstants.titleColor,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: context.getSizeHeight(size: 0.02)),
            margin: EdgeInsets.only(top: context.getSizeHeight(size: 0.02)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConstants.whiteColor,
            ),
            child: Observer(
              builder: (context) => Column(
                children: [
                  TextForms(
                      question: _gamesSurveyScreenModel.questions[0],
                      questionController: _gamesSurveyScreenModel.ageController,
                      isNumber: true),
                  TextForms(
                      question: _gamesSurveyScreenModel.questions[1],
                      questionController:
                          _gamesSurveyScreenModel.genderController,
                      isNumber: false),
                  TextForms(
                      question: _gamesSurveyScreenModel.questions[2],
                      questionController:
                          _gamesSurveyScreenModel.studentController,
                      isNumber: false),
                  TextForms(
                      question: _gamesSurveyScreenModel.questions[3],
                      questionController:
                          _gamesSurveyScreenModel.playVideoGameController,
                      isNumber: false),
                  TextForms(
                      question: _gamesSurveyScreenModel.questions[4],
                      questionController:
                          _gamesSurveyScreenModel.favoriteGameController,
                      isNumber: false),
                  TextForms(
                      question: _gamesSurveyScreenModel.questions[5],
                      questionController:
                          _gamesSurveyScreenModel.mostPlayedGameController,
                      isNumber: false),
                  TextForms(
                      question: _gamesSurveyScreenModel.questions[6],
                      questionController:
                          _gamesSurveyScreenModel.reasonOfPLayGameController,
                      isNumber: false),
                  CustomElevatedButton(
                      buttonText: 'Submit',
                      onPressed: () async => await _gamesSurveyScreenModel.postVideoGameData(
                          context: context,
                          age: int.parse(
                              _gamesSurveyScreenModel.ageController.value.text),
                          gender: _gamesSurveyScreenModel
                              .genderController.value.text,
                          student: _gamesSurveyScreenModel
                              .studentController.value.text,
                          playVideoGame: _gamesSurveyScreenModel
                              .playVideoGameController.value.text,
                          favoriteGame: _gamesSurveyScreenModel
                              .favoriteGameController.value.text,
                          mostPlayedGame: _gamesSurveyScreenModel
                              .mostPlayedGameController.value.text,
                          ReasonOfPlayGame: _gamesSurveyScreenModel
                              .reasonOfPLayGameController
                              .value
                              .text)).getPadding(
                      context: context, sizeWidth: 0, sizeHeight: 0.02),
                  _gamesSurveyScreenModel.isLoadingData
                      ? CustomText(text: 'İstatistikler Yükleniyor..')
                      : CustomElevatedButton(
                              buttonText: 'İstatistikleri Görüntüle',
                              onPressed: () =>
                                  _gamesSurveyScreenModel.isGetVideoGameData())
                          .getPaddingOnly(context: context, bottom: 0.04),
                  Observer(builder: (context) {
                    return _gamesSurveyScreenModel.isLoading
                        ? Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StatisticViewVideoGame(
                                      surveyName: 'Age',
                                      isAge: true,
                                      datas: _gamesSurveyScreenModel
                                          .videoGameDataAge),
                                  StatisticViewVideoGame(
                                      surveyName: 'Gender',
                                      isGender: true,
                                      datas: _gamesSurveyScreenModel
                                          .videoGameDataGender),
                                  StatisticViewVideoGame(
                                      surveyName: 'Student',
                                      isStudent: true,
                                      datas: _gamesSurveyScreenModel
                                          .videoGameDataStudent),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StatisticViewVideoGame(
                                      surveyName: 'Play Video Game',
                                      isPlayVideoGame: true,
                                      datas: _gamesSurveyScreenModel
                                          .videoGameDataPlayVideoGame),
                                  StatisticViewVideoGame(
                                      surveyName: 'Favorite Game',
                                      isFavoriteGame: true,
                                      datas: _gamesSurveyScreenModel
                                          .videoGameDataFavoriteGame),
                                  StatisticViewVideoGame(
                                      surveyName: 'Most Played Game',
                                      isMostPLayedGame: true,
                                      datas: _gamesSurveyScreenModel
                                          .videoGameDataMostPlayedGame),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StatisticViewVideoGame(
                                      surveyName: 'Reason of Game',
                                      isReasonOfPlayGame: true,
                                      datas: _gamesSurveyScreenModel
                                          .videoGameDataReasonOfPlayGame),
                                  const SizedBox(),
                                  const SizedBox()
                                ],
                              ),
                            ],
                          ).getPaddingOnly(context: context, top: 0.02)
                        : _gamesSurveyScreenModel.isCircular
                            ? const CustomCircularProgress()
                                .getPaddingOnly(context: context, top: 0.02)
                            : const SizedBox();
                  })
                ],
              ),
            ),
          )
        ],
      ).getPaddingOnly(context: context, top: 0.04, right: 0.02, left: 0.02),
    );
  }
}
