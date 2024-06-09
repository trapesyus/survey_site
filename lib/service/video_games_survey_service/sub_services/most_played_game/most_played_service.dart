import 'package:dio/dio.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/most_played_game/most_played_game_model/most_played_game_model.dart';

class MostPlayedService {
  final Dio _dio = Dio();

  Future<List<MostPlayedGameModel>> getMostPlayedData() async {
    List<MostPlayedGameModel> result = [];
    const String url =
        'http://127.0.0.1:5000/get_videogame_statistics_most_played_game';
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(MostPlayedGameModel.fromJson(item));
      }
    }
    return result;
  }
}
