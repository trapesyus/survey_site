import 'package:dio/dio.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/favorite_game/favorite_game_model/favorite_game_model.dart';

class FavoritaGameService {
  final Dio _dio = Dio();

  Future<List<FavoriteGameModel>> getFavoriteGame() async {
    List<FavoriteGameModel> result = [];
    const String url =
        'http://127.0.0.1:5000/get_videogame_statistics_favorite_game';
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(FavoriteGameModel.fromJson(item));
      }
    }
    return result;
  }
}
