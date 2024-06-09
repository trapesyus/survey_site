import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q3/q3_model/q3_model.dart';

class Q3Service {
  final Dio _dio = Dio();

  Future<List<Q3Model>> getQ3Data() async {
    const String url = 'http://127.0.0.1:5000/get_survey_q3';
    List<Q3Model> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(Q3Model.fromJson(item));
      }
    }
    return result;
  }
}
