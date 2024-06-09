class HousingTypeStaticsModel {
  String? housingType;
  String? percentage;
  int? totalStudents;

  HousingTypeStaticsModel(
      {this.housingType, this.percentage, this.totalStudents});

  HousingTypeStaticsModel.fromJson(Map<String, dynamic> json) {
    housingType = json['Housing Type'];
    percentage = json['Percentage'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Housing Type'] = housingType;
    data['Percentage'] = percentage;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
