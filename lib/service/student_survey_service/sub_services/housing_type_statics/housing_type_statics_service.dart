import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/housing_type_statics/housing_type_statics_model.dart';

class HousingTypeStaticsService {
  final Dio _dio = Dio();

  Future<List<HousingTypeStaticsModel>> getStatics() async {
    const String url = 'http://127.0.0.1:5000/get_survey_housing_type';
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      List<HousingTypeStaticsModel> result = [];
      for (var item in response.data) {
        result.add(HousingTypeStaticsModel.fromJson(item));
      }
      return result;
    } else {
      throw Exception('Veri yüklenirken hata oluştu');
    }
  }
}
