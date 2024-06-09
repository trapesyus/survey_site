import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/student_survey_model/student_survey_model.dart';

class StudentServiceSurvey {
  final Dio _dio = Dio();

  Future<void> postSurveyData({
    required String career,
    required String citizenship,
    required String nationality,
    required int yearSinceMatriculation,
    required int yearOfStudy,
    required String primaryProgramme,
    required String gender,
    required String department,
    required String housingType,
    required int q1,
    required int q2,
    required int q3,
    required int q4,
    required int q5,
    required int q6,
    required int q7,
    required int q8,
    required String q9,
  }) async {
    const String url = 'http://localhost:5000/submit';
    final Map data = {
      'career': career,
      'citizenship': citizenship,
      'nationality': nationality,
      'year_since_matriculation': yearSinceMatriculation,
      'year_of_study': yearOfStudy,
      'primary_programme': primaryProgramme,
      'gender': gender,
      'department': department,
      'housing_type': housingType,
      'q1': q1,
      'q2': q2,
      'q3': q3,
      'q4': q4,
      'q5': q5,
      'q6': q6,
      'q7': q7,
      'q8': q8,
      'q9': q9,
    };
    await _dio.post(url, data: data);
  }

  Future getStudentSurveyData() async {
    try {
      final Response response =
          await _dio.get('http://localhost:5000/get_survey');
      if (response.statusCode != 200) {
        log('get student survey hatalı');
        return StudentSurveyModel();
      }
      List<StudentSurveyModel> tempData = [];
      for (int i = 0; i < 10; i++) {
        tempData.add(StudentSurveyModel.fromJson(response.data[i]));
        print(tempData[i].q1HowManyEventsHaveYouVolunteeredIn);
      }

      return response.data;
    } catch (e) {
      log(e.toString());
    }
  }
}
