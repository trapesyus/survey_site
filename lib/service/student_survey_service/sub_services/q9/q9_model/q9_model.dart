class Q9Model {
  String? percentage;
  String? q9WhatIsAnIdealStudentLife;
  int? totalStudents;

  Q9Model(
      {this.percentage, this.q9WhatIsAnIdealStudentLife, this.totalStudents});

  Q9Model.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    q9WhatIsAnIdealStudentLife = json['Q9-What is an ideal student life ?'];
    totalStudents = json['Total_Students'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Q9-What is an ideal student life ?'] = q9WhatIsAnIdealStudentLife;
    data['Total_Students'] = totalStudents;
    return data;
  }
}
