class CitizenshipModel {
  String? citizenship;
  String? percentage;
  int? totalStudents;

  CitizenshipModel({this.citizenship, this.percentage, this.totalStudents});

  CitizenshipModel.fromJson(Map<String, dynamic> json) {
    citizenship = json['Citizenship'];
    percentage = json['Percentage'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Citizenship'] = citizenship;
    data['Percentage'] = percentage;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
