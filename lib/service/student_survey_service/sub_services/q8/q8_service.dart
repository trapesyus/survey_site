import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q8/q8_model/q8_model.dart';

class Q8Service {
  final Dio _dio = Dio();

  Future<List<Q8Model>> getQ8Data() async {
    const String url = 'http://127.0.0.1:5000/get_survey_q8';
    List<Q8Model> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(Q8Model.fromJson(item));
      }
    }
    return result;
  }
}
