class Q3Model {
  String? percentage;
  int? q3HowManyActivitiesAreYouInterestedIn;
  int? totalStudents;

  Q3Model(
      {this.percentage,
      this.q3HowManyActivitiesAreYouInterestedIn,
      this.totalStudents});

  Q3Model.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    q3HowManyActivitiesAreYouInterestedIn =
        json['Q3-How many activities are you Interested in ?'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Q3-How many activities are you Interested in ?'] =
        q3HowManyActivitiesAreYouInterestedIn;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
