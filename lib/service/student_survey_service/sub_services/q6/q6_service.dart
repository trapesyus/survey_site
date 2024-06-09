import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q6/q6_model/q6_model.dart';

class Q6Service {
  final Dio _dio = Dio();

  Future<List<Q6Model>> getQ6Data() async {
    const String url = 'http://127.0.0.1:5000/get_survey_q6';
    List<Q6Model> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(Q6Model.fromJson(item));
      }
    }
    return result;
  }
}
