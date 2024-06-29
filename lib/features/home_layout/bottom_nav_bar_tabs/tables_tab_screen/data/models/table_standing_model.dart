import 'package:json_annotation/json_annotation.dart';

part 'table_standing_model.g.dart';

@JsonSerializable()
class TeamStandingData {
  final int rank;
  final String team;
  final int points;
  final int goalsDiff;

  TeamStandingData({
    required this.rank,
    required this.team,
    required this.points,
    required this.goalsDiff,
  });

  factory TeamStandingData.fromJson(Map<String, dynamic> json) =>
      _$TeamStandingDataFromJson(json);

  Map<String, dynamic> toJson() => _$TeamStandingDataToJson(this);
}
