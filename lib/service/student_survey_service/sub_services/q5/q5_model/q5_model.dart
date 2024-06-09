class Q5Model {
  String? percentage;
  int? q5WhatAreYourLevelsOfStress;
  int? totalStudents;

  Q5Model(
      {this.percentage, this.q5WhatAreYourLevelsOfStress, this.totalStudents});

  Q5Model.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    q5WhatAreYourLevelsOfStress = json['Q5-What are your levels of stress ?'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Q5-What are your levels of stress ?'] = q5WhatAreYourLevelsOfStress;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
