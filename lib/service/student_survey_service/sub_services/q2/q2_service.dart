import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q2/q2_model/q2_model.dart';

class Q2Service {
  final Dio _dio = Dio();

  Future<List<Q2Model>> getQ2Data() async {
    const String url = 'http://127.0.0.1:5000/get_survey_q2';
    List<Q2Model> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(Q2Model.fromJson(item));
      }
    }
    return result;
  }
}
