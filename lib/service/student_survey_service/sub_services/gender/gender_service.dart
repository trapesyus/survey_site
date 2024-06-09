import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/gender/gender_model/gender_model.dart';

class GenderService {
  final Dio _dio = Dio();

  Future<List<GenderModel>> getGenderData() async {
    List<GenderModel> result = [];
    final Response response =
        await _dio.get('http://127.0.0.1:5000/get_survey_gender');
    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(GenderModel.fromJson(item));
      }
    }
    return result;
  }
}
