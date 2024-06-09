class YearSinceMatriculationModel {
  String? percentage;
  int? totalStudents;
  int? yearSinceMatriculation;

  YearSinceMatriculationModel(
      {this.percentage, this.totalStudents, this.yearSinceMatriculation});

  YearSinceMatriculationModel.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    totalStudents = json['Total_Students'];
    yearSinceMatriculation = json['Year Since Matriculation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Total_Students'] = totalStudents;
    data['Year Since Matriculation'] = yearSinceMatriculation;
    return data;
  }
}
