import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/citizenship/citizenship_model/citizenship_model.dart';

class CitizenshipService {
  final Dio _dio = Dio();

  Future<List<CitizenshipModel>> getCitizenshipData() async {
    List<CitizenshipModel> result = [];
    const String url = 'http://127.0.0.1:5000/get_survey_citizenship';
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(CitizenshipModel.fromJson(item));
      }
    }
    return result;
  }
}
