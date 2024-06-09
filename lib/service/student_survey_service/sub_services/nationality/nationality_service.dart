import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/nationality/nationality_model.dart/nationality_model.dart';

class NationalityService {
  final Dio _dio = Dio();

  Future<List<NationalityModel>> getNatioanlityData() async {
    List<NationalityModel> result = [];
    final Response response =
        await _dio.get('http://127.0.0.1:5000/get_survey_nationality');
    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(NationalityModel.fromJson(item));
      }
    }
    return result;
  }
}
