class TablesAndStats {
  
  TablesAndStats
      (
      this.id,
      this.playerName,
      this.matchesPlayed,
      this.goalsScored,
      this.assists,
      this.playerPosition,
      this.yellowCard,
      this.redCard,
      this.nationality
  );

  String id;
  String playerName;
  int matchesPlayed;
  int goalsScored;
  int assists;
  String playerPosition;
  int yellowCard;
  int redCard;
  String nationality;

  TablesAndStats.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    playerName = data['player_name'];
    matchesPlayed = data['matches_played'];
    goalsScored = data['goals_scored'];
    assists = data['assists'];
    playerPosition = data['player_position'];
    yellowCard = data['yellow_card'];
    redCard = data['red_card'];
    nationality = data['nationality'];
  }

}