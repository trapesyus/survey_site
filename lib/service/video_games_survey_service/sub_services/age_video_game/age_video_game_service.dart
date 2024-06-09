import 'package:dio/dio.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/age_video_game/age_video_game_model/age_video_game_model.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/play_video_game/play_video_game_model/play_video_game_model.dart';

class AgeVideoGameService {
  final Dio _dio = Dio();

  Future<List<AgeVideoGameModel>> getAgeData() async {
    List<AgeVideoGameModel> result = [];
    const String url = 'http://127.0.0.1:5000/get_videogame_statistics_age';
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(AgeVideoGameModel.fromJson(item));
      }
    }
    return result;
  }
}
