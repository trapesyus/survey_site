import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/gender/gender_model/gender_model.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/gender_video_game/gender_video_game_model/gender_video_game_model.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/student/student_model/student_model.dart';

class GenderVideoGameService {
  final Dio _dio = Dio();

  Future<List<GenderVideoGameModel>> getGenderData() async {
    List<GenderVideoGameModel> result = [];
    const String url = 'http://127.0.0.1:5000/get_videogame_statistics_gender';
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(GenderVideoGameModel.fromJson(item));
      }
    }
    return result;
  }
}
