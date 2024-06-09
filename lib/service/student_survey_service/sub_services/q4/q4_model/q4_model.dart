class Q4Model {
  String? percentage;
  int? q4HowManyActivitiesAreYouPassionateAbout;
  int? totalStudents;

  Q4Model(
      {this.percentage,
      this.q4HowManyActivitiesAreYouPassionateAbout,
      this.totalStudents});

  Q4Model.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    q4HowManyActivitiesAreYouPassionateAbout =
        json['Q4-How many activities are you Passionate about ?'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Q4-How many activities are you Passionate about ?'] =
        q4HowManyActivitiesAreYouPassionateAbout;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
