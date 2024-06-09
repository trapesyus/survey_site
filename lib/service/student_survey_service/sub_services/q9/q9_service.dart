import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q9/q9_model/q9_model.dart';

class Q9Service {
  final Dio _dio = Dio();

  Future<List<Q9Model>> getQ9Data() async {
    const String url = 'http://127.0.0.1:5000/get_survey_q9';
    List<Q9Model> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(Q9Model.fromJson(item));
      }
    }
    return result;
  }
}
