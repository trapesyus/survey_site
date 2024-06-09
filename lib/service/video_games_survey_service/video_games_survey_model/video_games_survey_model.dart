class VideoGamesSurveyModel {
  int? age;
  String? gender;
  String? favoriteGame;
  String? mostPlayedGame;
  String? playVideoGame;
  String? reasonOfPlayGame;
  String? student;

  VideoGamesSurveyModel(
      {this.age,
      this.gender,
      this.favoriteGame,
      this.mostPlayedGame,
      this.playVideoGame,
      this.reasonOfPlayGame,
      this.student});

  VideoGamesSurveyModel.fromJson(Map<String, dynamic> json) {
    age = json['Age'];
    gender = json['Gender'];
    favoriteGame = json['favorite_game'];
    mostPlayedGame = json['most_played_game'];
    playVideoGame = json['play_video_game'];
    reasonOfPlayGame = json['reason_of_play_game'];
    student = json['student'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Age'] = age;
    data['Gender'] = gender;
    data['favorite_game'] = favoriteGame;
    data['most_played_game'] = mostPlayedGame;
    data['play_video_game'] = playVideoGame;
    data['reason_of_play_game'] = reasonOfPlayGame;
    data['student'] = student;
    return data;
  }
}
