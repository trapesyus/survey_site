class GenderVideoGameModel {
  String? gender;
  String? percentage;
  int? totalPlayers;

  GenderVideoGameModel({this.gender, this.percentage, this.totalPlayers});

  GenderVideoGameModel.fromJson(Map<String, dynamic> json) {
    gender = json['Gender'];
    percentage = json['Percentage'];
    totalPlayers = json['Total_Players'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Gender'] = gender;
    data['Percentage'] = percentage;
    data['Total_Players'] = totalPlayers;
    return data;
  }
}
