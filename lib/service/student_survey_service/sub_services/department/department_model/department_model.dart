class DepartmentModel {
  String? department;
  String? percentage;
  int? totalStudents;

  DepartmentModel({this.department, this.percentage, this.totalStudents});

  DepartmentModel.fromJson(Map<String, dynamic> json) {
    department = json['Department'];
    percentage = json['Percentage'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Department'] = department;
    data['Percentage'] = percentage;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
