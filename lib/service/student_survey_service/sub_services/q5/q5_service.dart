import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q5/q5_model/q5_model.dart';

class Q5Service {
  final Dio _dio = Dio();
  Future<List<Q5Model>> getQ5Data() async {
    const String url = 'http://127.0.0.1:5000/get_survey_q5';
    List<Q5Model> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(Q5Model.fromJson(item));
      }
    }
    return result;
  }
}
