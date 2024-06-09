class Q1Model {
  String? percentage;
  int? q1HowManyEventsHaveYouVolunteeredIn;
  int? totalStudents;

  Q1Model(
      {this.percentage,
      this.q1HowManyEventsHaveYouVolunteeredIn,
      this.totalStudents});

  Q1Model.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    q1HowManyEventsHaveYouVolunteeredIn =
        json['Q1-How many events have you Volunteered in ?'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Q1-How many events have you Volunteered in ?'] =
        q1HowManyEventsHaveYouVolunteeredIn;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
