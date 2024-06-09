import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/primary_programme/primary_programme_model/primary_programme_model.dart';

class PrimaryProgrammeService {
  final Dio _dio = Dio();

  Future<List<PrimaryProgrammeModel>> getPrimaryProgrammeData() async {
    const String url = 'http://127.0.0.1:5000/get_survey_primary_programme';
    List<PrimaryProgrammeModel> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(PrimaryProgrammeModel.fromJson(item));
      }
    }
    return result;
  }
}
