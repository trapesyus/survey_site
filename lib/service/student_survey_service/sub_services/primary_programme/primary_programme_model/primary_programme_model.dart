class PrimaryProgrammeModel {
  String? percentage;
  String? primaryProgramme;
  int? totalStudents;

  PrimaryProgrammeModel(
      {this.percentage, this.primaryProgramme, this.totalStudents});

  PrimaryProgrammeModel.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    primaryProgramme = json['Primary Programme'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Primary Programme'] = primaryProgramme;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
