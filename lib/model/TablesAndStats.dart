import 'package:cloud_firestore/cloud_firestore.dart';

class TablesAndStats {
  
  // TablesAndStats
  // (
  //     this.id,
  //     this.playerName,
  //     this.matchesPlayed,
  //     this.goalsScored,
  //     this.assists,
  //     this.playerPosition,
  //     this.yellowCard,
  //     this.redCard,
  //     this.nationality,
  //
  // );

  String id;
  String playerName;
  int matchesPlayed;
  int goalsScored;
  int assists;
  String playerPosition;
  int yellowCard;
  int redCard;
  String nationality;

  // int id;
  // String playerName;
  // int matchesPlayed;
  // int goalsScored;
  // int assists;
  // String playerPosition;
  // int yellowCard;
  // int redCard;
  // String nationality;


//   DocumentReference reference;
//
//   factory TablesAndStats.fromSnapshot(DocumentSnapshot snapshot) {
//     TablesAndStats newTablesAndStats = TablesAndStats.fromJson(snapshot.data());
//     newTablesAndStats.reference = snapshot.reference;
//     return newTablesAndStats;
//   }
//
//   factory TablesAndStats.fromJson(Map<String, dynamic> json) =>
//       _tablesAndStatsFromJson(json);
//
//   Map<String, dynamic> toJson() => _tablesAndStatsToJson(this);
//
//   @override
//   String toString() => 'playerName $playerName';
// }
//
// TablesAndStats _tablesAndStatsFromJson(Map<String, dynamic> data) {
//   return TablesAndStats(
//       data['id'],
//       data['playerName'],
//       data['matchesPlayed'],
//       data['goalsScored'],
//       data['assists'],
//       data['playerPosition'],
//       data['yellowCard'],
//       data['redCard'],
//       data['nationality'],
//   );
// }
//
// Map<String, dynamic> _tablesAndStatsToJson(TablesAndStats instance) {
//   return {
//     'id' : instance.id,
//     'playerName': instance.playerName,
//     'matchesPlayed': instance.matchesPlayed,
//     'goalsScored': instance.goalsScored,
//     'assists': instance.assists,
//     'playerPosition': instance.playerPosition,
//     'yellowCard': instance.yellowCard,
//     'redCard': instance.redCard,
//     'nationality': instance.nationality,
//   };


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