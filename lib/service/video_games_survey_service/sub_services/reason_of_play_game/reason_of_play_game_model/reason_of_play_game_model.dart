class ReasonOfPlayGameModel {
  String? percentage;
  String? reasonOfPlayGame;
  int? totalPlayers;

  ReasonOfPlayGameModel(
      {this.percentage, this.reasonOfPlayGame, this.totalPlayers});

  ReasonOfPlayGameModel.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    reasonOfPlayGame = json['Reason_Of_Play_Game'];
    totalPlayers = json['Total_Players'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Reason_Of_Play_Game'] = reasonOfPlayGame;
    data['Total_Players'] = totalPlayers;
    return data;
  }
}
