import 'package:dio/dio.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/play_video_game/play_video_game_model/play_video_game_model.dart';

class PlayVideoGameService {
  final Dio _dio = Dio();

  Future<List<PlayVideoGameModel>> getPlayVideoGameData() async {
    List<PlayVideoGameModel> result = [];
    const String url =
        'http://127.0.0.1:5000/get_videogame_statistics_play_video_game';
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(PlayVideoGameModel.fromJson(item));
      }
    }
    return result;
  }
}
