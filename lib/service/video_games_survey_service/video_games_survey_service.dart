import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:yagmur/core/extensions/snackbar_extension.dart';
import 'package:yagmur/service/video_games_survey_service/video_games_survey_model/video_games_survey_model.dart';

class VideoGamesSurveyService {
  final Dio _dio = Dio();

  Future<void> postVideoData(
      {required int age,
      required String gender,
      required String student,
      required String playVideoGame,
      required String favoriteGame,
      required String mostPlayedGame,
      required String reasonOfPlayGame}) async {
    const String url = 'http://localhost:5000/submit_videogame';
    final Map data = {
      'age': age,
      'gender': gender,
      'student': student,
      'play_video_game': playVideoGame,
      'favorite_game': favoriteGame,
      'most_played_game': mostPlayedGame,
      'reason_of_play_game': reasonOfPlayGame
    };

    await _dio.post(url, data: data);
  }

  Future<VideoGamesSurveyModel?> getVideoData() async {
    const String url = 'http://localhost:5000/get_videogame_usage';
    final Response response = await _dio.get(url);
    if (response.statusCode != 200) {
      log('get hatası');
      return null;
    }
    final jsonBody = response.data;
    final data = VideoGamesSurveyModel.fromJson(jsonBody);

    return data;
  }
}
