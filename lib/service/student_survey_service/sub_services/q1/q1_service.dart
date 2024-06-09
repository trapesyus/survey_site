import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q1/q1_model/q1_model.dart';

class Q1Service {
  final Dio _dio = Dio();

  Future<List<Q1Model>> getQ1Data() async {
    const String url = 'http://127.0.0.1:5000/get_survey_q1';
    List<Q1Model> result = [];
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(Q1Model.fromJson(item));
      }
    }
    print('sonuç Geldi ${result[0].q1HowManyEventsHaveYouVolunteeredIn}');
    return result;
  }
}
