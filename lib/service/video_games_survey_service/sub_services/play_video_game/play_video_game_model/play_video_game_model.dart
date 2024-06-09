class PlayVideoGameModel {
  String? percentage;
  String? playVideoGame;
  int? totalPlayers;

  PlayVideoGameModel({this.percentage, this.playVideoGame, this.totalPlayers});

  PlayVideoGameModel.fromJson(Map<String, dynamic> json) {
    percentage = json['Percentage'];
    playVideoGame = json['Play_Video_Game'];
    totalPlayers = json['Total_Players'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Percentage'] = percentage;
    data['Play_Video_Game'] = playVideoGame;
    data['Total_Players'] = totalPlayers;
    return data;
  }
}
