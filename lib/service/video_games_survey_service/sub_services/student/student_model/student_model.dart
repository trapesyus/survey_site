class StudentModel {
  String? percentage;
  String? student;
  int? totalPlayers;

  StudentModel({this.percentage, this.student, this.totalPlayers});

  StudentModel.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    student = json['Student'];
    totalPlayers = json['Total_Players'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Student'] = student;
    data['Total_Players'] = totalPlayers;
    return data;
  }
}
