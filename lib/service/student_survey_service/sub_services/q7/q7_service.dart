import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q7/q7_model/q7_model.dart';

class Q7Service {
  final Dio _dio = Dio();

  Future<List<Q7Model>> getQ7Data() async {
    const String url = 'http://127.0.0.1:5000/get_survey_q7';
    List<Q7Model> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(Q7Model.fromJson(item));
      }
    }
    return result;
  }
}
