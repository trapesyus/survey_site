class AgeVideoGameModel {
  int? age;
  String? percentage;
  int? totalPlayers;

  AgeVideoGameModel({this.age, this.percentage, this.totalPlayers});

  AgeVideoGameModel.fromJson(Map<String, dynamic> json) {
    age = json['Age'];
    percentage = json['Percentage'];
    totalPlayers = json['Total_Players'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Age'] = age;
    data['Percentage'] = percentage;
    data['Total_Players'] = totalPlayers;
    return data;
  }
}
