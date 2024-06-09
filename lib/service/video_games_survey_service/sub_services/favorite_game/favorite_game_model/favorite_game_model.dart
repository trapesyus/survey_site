class FavoriteGameModel {
  String? favoriteGame;
  String? percentage;
  int? totalPlayers;

  FavoriteGameModel({this.favoriteGame, this.percentage, this.totalPlayers});

  FavoriteGameModel.fromJson(Map<String, dynamic> json) {
    favoriteGame = json['Favorite_Game'];
    percentage = json['Percentage'];
    totalPlayers = json['Total_Players'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Favorite_Game'] = favoriteGame;
    data['Percentage'] = percentage;
    data['Total_Players'] = totalPlayers;
    return data;
  }
}
