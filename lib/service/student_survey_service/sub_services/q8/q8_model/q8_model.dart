class Q8Model {
  String? percentage;
  int? q8AboutHowEventsAreYouAwareAbout;
  int? totalStudents;

  Q8Model(
      {this.percentage,
      this.q8AboutHowEventsAreYouAwareAbout,
      this.totalStudents});

  Q8Model.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    q8AboutHowEventsAreYouAwareAbout =
        json['Q8-About How events are you aware about ?'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Q8-About How events are you aware about ?'] =
        q8AboutHowEventsAreYouAwareAbout;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
