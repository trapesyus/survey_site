class Q6Model {
  String? percentage;
  int? q6HowSatisfiedYouAreWithYourStudentLife;
  int? totalStudents;

  Q6Model(
      {this.percentage,
      this.q6HowSatisfiedYouAreWithYourStudentLife,
      this.totalStudents});

  Q6Model.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    q6HowSatisfiedYouAreWithYourStudentLife =
        json['Q6-How Satisfied You are with your Student Life ?'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Q6-How Satisfied You are with your Student Life ?'] =
        q6HowSatisfiedYouAreWithYourStudentLife;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
