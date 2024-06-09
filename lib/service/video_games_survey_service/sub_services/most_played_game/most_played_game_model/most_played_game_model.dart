class MostPlayedGameModel {
  String? mostPlayedGame;
  String? percentage;
  int? totalPlayers;

  MostPlayedGameModel(
      {this.mostPlayedGame, this.percentage, this.totalPlayers});

  MostPlayedGameModel.fromJson(Map<String, dynamic> json) {
    mostPlayedGame = json['Most_Played_Game'];
    percentage = json['Percentage'];
    totalPlayers = json['Total_Players'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Most_Played_Game'] = mostPlayedGame;
    data['Percentage'] = percentage;
    data['Total_Players'] = totalPlayers;
    return data;
  }
}
