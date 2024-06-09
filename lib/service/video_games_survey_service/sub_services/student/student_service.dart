import 'package:dio/dio.dart';
import 'package:yagmur/service/video_games_survey_service/sub_services/student/student_model/student_model.dart';

class StudentService {
  final Dio _dio = Dio();

  Future<List<StudentModel>> getStudentData() async {
    List<StudentModel> result = [];
    const String url = 'http://127.0.0.1:5000/get_videogame_statistics_student';
    final Response response = await _dio.get(url);

    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(StudentModel.fromJson(item));
      }
    }
    return result;
  }
}
