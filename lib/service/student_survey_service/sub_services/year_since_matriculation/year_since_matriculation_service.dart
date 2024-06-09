import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/year_since_matriculation/year_since_matriculation_model/year_since_matriculation_model.dart';

class YearSinceMatriculationService {
  final Dio _dio = Dio();

  Future<List<YearSinceMatriculationModel>>
      getYearSinceMatriculationData() async {
    const String url =
        'http://127.0.0.1:5000/get_survey_year_since_matriculation';
    List<YearSinceMatriculationModel> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(YearSinceMatriculationModel.fromJson(item));
      }
    }
    return result;
  }
}
