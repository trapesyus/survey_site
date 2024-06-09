import 'package:dio/dio.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/reason_of_play_game/reason_of_play_game_model/reason_of_play_game_model.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/student/student_model/student_model.dart';

class ReasonOfPlayGameService {
  final Dio _dio = Dio();

  Future<List<ReasonOfPlayGameModel>> getReasonOfPlayGameData() async {
    List<ReasonOfPlayGameModel> result = [];
    const String url =
        'http://127.0.0.1:5000/get_videogame_statistics_reason_of_play_game';
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(ReasonOfPlayGameModel.fromJson(item));
      }
    }
    return result;
  }
}
