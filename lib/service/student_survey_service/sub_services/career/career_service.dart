import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/career/career_model/career_model.dart';

class CareerService {
  final Dio _dio = Dio();

  Future<List<CareerModel>> getCareerData() async {
    List<CareerModel> result = [];
    const String url = 'http://127.0.0.1:5000/get_survey_career';
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(CareerModel.fromJson(item));
      }
    }
    return result;
  }
}
