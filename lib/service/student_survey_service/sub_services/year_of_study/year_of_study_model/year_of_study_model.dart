class YearOfStudyModel {
  String? percentage;
  int? totalStudents;
  int? yearOfStudy;

  YearOfStudyModel({this.percentage, this.totalStudents, this.yearOfStudy});

  YearOfStudyModel.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    totalStudents = json['Total_Students'];
    yearOfStudy = json['Year of Study'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Total_Students'] = totalStudents;
    data['Year of Study'] = yearOfStudy;
    return data;
  }
}
