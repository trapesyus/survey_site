class CareerModel {
  String? career;
  String? percentage;
  int? totalStudents;

  CareerModel({this.career, this.percentage, this.totalStudents});

  CareerModel.fromJson(Map<String, dynamic> json) {
    career = json['Career'];
    percentage = json['Percentage'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Career'] = career;
    data['Percentage'] = percentage;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
