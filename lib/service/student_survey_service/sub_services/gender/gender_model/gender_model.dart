class GenderModel {
  String? gender;
  String? percentage;
  int? totalStudents;

  GenderModel({this.gender, this.percentage, this.totalStudents});

  GenderModel.fromJson(Map<String, dynamic> json) {
    gender = json['Gender'];
    percentage = json['Percentage'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Gender'] = gender;
    data['Percentage'] = percentage;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
