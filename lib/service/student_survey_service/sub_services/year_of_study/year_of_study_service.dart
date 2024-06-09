import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/year_of_study/year_of_study_model/year_of_study_model.dart';

class YearOfStudyService {
  final Dio _dio = Dio();

  Future<List<YearOfStudyModel>> getYearOfStudyData() async {
    const String url = 'http://127.0.0.1:5000/get_survey_year_of_study';
    List<YearOfStudyModel> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(YearOfStudyModel.fromJson(item));
      }
    }
    return result;
  }
}
