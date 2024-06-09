import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:yagmur/core/extensions/snackbar_extension.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/age_video_game/age_video_game_model/age_video_game_model.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/age_video_game/age_video_game_service.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/favorite_game/favorite_game_model/favorite_game_model.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/favorite_game/favorite_game_service.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/gender_video_game/gender_video_game_model/gender_video_game_model.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/gender_video_game/gender_video_game_service.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/most_played_game/most_played_game_model/most_played_game_model.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/most_played_game/most_played_service.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/play_video_game/play_video_game_model/play_video_game_model.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/play_video_game/play_video_game_service.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/reason_of_play_game/reason_of_play_game_model/reason_of_play_game_model.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/reason_of_play_game/reason_of_play_game_service.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/student/student_model/student_model.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/student/student_service.dart';
import 'package:yagmur/service/video_games_survey_service/video_games_survey_model/video_games_survey_model.dart';
import 'package:yagmur/service/video_games_survey_service/video_games_survey_service.dart';
part 'video_games_survey_screen_model.g.dart';

class VideoGamesSurveyScreenModel = _VideoGamesSurveyScreenModelBase
    with _$VideoGamesSurveyScreenModel;

abstract class _VideoGamesSurveyScreenModelBase with Store {
  @observable
  bool isLoading = false;
  @observable
  bool isCircular = false;

  @observable
  bool isLoadingData = true;

  @observable
  TextEditingController ageController = TextEditingController();
  @observable
  TextEditingController genderController = TextEditingController();
  @observable
  TextEditingController studentController = TextEditingController();
  @observable
  TextEditingController playVideoGameController = TextEditingController();
  @observable
  TextEditingController favoriteGameController = TextEditingController();
  @observable
  TextEditingController mostPlayedGameController = TextEditingController();
  @observable
  TextEditingController reasonOfPLayGameController = TextEditingController();

  @observable
  List<AgeVideoGameModel> videoGameDataAge = ObservableList.of([]);
  final AgeVideoGameService _ageVideoGameService = AgeVideoGameService();

  @observable
  List<FavoriteGameModel> videoGameDataFavoriteGame = ObservableList.of([]);
  final FavoritaGameService _favoritaGameService = FavoritaGameService();

  @observable
  List<GenderVideoGameModel> videoGameDataGender = ObservableList.of([]);
  final GenderVideoGameService _genderVideoGameService =
      GenderVideoGameService();

  @observable
  List<MostPlayedGameModel> videoGameDataMostPlayedGame = ObservableList.of([]);
  final MostPlayedService _mostPlayedService = MostPlayedService();

  @observable
  List<PlayVideoGameModel> videoGameDataPlayVideoGame = ObservableList.of([]);
  final PlayVideoGameService _playVideoGameService = PlayVideoGameService();

  @observable
  List<StudentModel> videoGameDataStudent = ObservableList.of([]);
  final StudentService _studentService = StudentService();

  @observable
  List<ReasonOfPlayGameModel> videoGameDataReasonOfPlayGame =
      ObservableList.of([]);
  final ReasonOfPlayGameService _reasonOfPlayGameService =
      ReasonOfPlayGameService();

  @observable
  List<String> questions = ObservableList.of([
    'Age',
    'Gender',
    'Student',
    'Play Video Game',
    'Favorite Game',
    'Most Played Game',
    'Reason Of Play Game'
  ]);

  final VideoGamesSurveyService _gamesSurveyService = VideoGamesSurveyService();
  List<VideoGamesSurveyModel> data = ObservableList.of([]);
  @action
  Future<void> initialize() async {
    await getVideoGameData().whenComplete(() => isLoadingData = false);
  }

  @action
  void isGetVideoGameData() {
    isCircular = true;
    if (videoGameDataAge.length > 0) {
      isLoading = true;
    }
  }

  @action
  Future<void> getVideoGameData() async {
    videoGameDataAge = await _ageVideoGameService.getAgeData();
    videoGameDataFavoriteGame = await _favoritaGameService.getFavoriteGame();
    videoGameDataGender = await _genderVideoGameService.getGenderData();
    videoGameDataMostPlayedGame = await _mostPlayedService.getMostPlayedData();
    videoGameDataPlayVideoGame =
        await _playVideoGameService.getPlayVideoGameData();
    videoGameDataStudent = await _studentService.getStudentData();
    videoGameDataReasonOfPlayGame =
        await _reasonOfPlayGameService.getReasonOfPlayGameData();
  }

  @action
  Future<void> postVideoGameData(
      {required BuildContext context,
      required int age,
      required String gender,
      required String student,
      required String playVideoGame,
      required String favoriteGame,
      required String mostPlayedGame,
      required String ReasonOfPlayGame}) async {
    if (age < 0 ||
        gender == '' ||
        student == '' ||
        playVideoGame == '' ||
        favoriteGame == '') {
      context.snackBarExtension(content: 'Eksik Veri Girişi Yaptınız');
      await _gamesSurveyService.getVideoData();
    }
    await _gamesSurveyService
        .postVideoData(
            age: age,
            gender: gender,
            student: student,
            playVideoGame: playVideoGame,
            favoriteGame: favoriteGame,
            mostPlayedGame: mostPlayedGame,
            reasonOfPlayGame: ReasonOfPlayGame)
        .whenComplete(() {
      ageController.clear();
      genderController.clear();
      studentController.clear();
      playVideoGameController.clear();
      favoriteGameController.clear();
      context.snackBarExtension(
          content: 'Anket verileriniz başarıyla gönderildi.');
    });
  }
}
