import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q4/q4_model/q4_model.dart';

class Q4Service {
  final Dio _dio = Dio();

  Future<List<Q4Model>> getQ4Data() async {
    const String url = 'http://127.0.0.1:5000/get_survey_q4';
    List<Q4Model> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(Q4Model.fromJson(item));
      }
    }
    return result;
  }
}
