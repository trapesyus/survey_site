class NationalityModel {
  String? nationality;
  String? percentage;
  int? totalStudents;

  NationalityModel({this.nationality, this.percentage, this.totalStudents});

  NationalityModel.fromJson(Map<String, dynamic> json) {
    nationality = json['Nationality'];
    percentage = json['Percentage'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Nationality'] = nationality;
    data['Percentage'] = percentage;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
