import 'package:dio/dio.dart';
import 'package:yagmur/service/student_survey_service/sub_services/department/department_model/department_model.dart';

class DepartmentService {
  final Dio _dio = Dio();

  Future<List<DepartmentModel>> getDepartmentData() async {
    List<DepartmentModel> result = [];
    final Response response =
        await _dio.get('http://127.0.0.1:5000/get_survey_department');
    if (response.statusCode == 200) {
      for (var item in response.data) {
        result.add(DepartmentModel.fromJson(item));
      }
    }
    return result;
  }
}
