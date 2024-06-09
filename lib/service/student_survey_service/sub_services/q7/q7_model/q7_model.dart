class Q7Model {
  String? percentage;
  int? q7HowMuchEffortDoYouMakeToInteractWithOthers;
  int? totalStudents;

  Q7Model(
      {this.percentage,
      this.q7HowMuchEffortDoYouMakeToInteractWithOthers,
      this.totalStudents});

  Q7Model.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    q7HowMuchEffortDoYouMakeToInteractWithOthers =
        json['Q7-How much effort do you make to interact with others ?'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Q7-How much effort do you make to interact with others ?'] =
        q7HowMuchEffortDoYouMakeToInteractWithOthers;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
