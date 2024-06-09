class Q2Model {
  String? percentage;
  int? q2HowManyEventsHaveYouParticipatedIn;
  int? totalStudents;

  Q2Model(
      {this.percentage,
      this.q2HowManyEventsHaveYouParticipatedIn,
      this.totalStudents});

  Q2Model.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    q2HowManyEventsHaveYouParticipatedIn =
        json['Q2-How many events have you Participated in ?'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Q2-How many events have you Participated in ?'] =
        q2HowManyEventsHaveYouParticipatedIn;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
