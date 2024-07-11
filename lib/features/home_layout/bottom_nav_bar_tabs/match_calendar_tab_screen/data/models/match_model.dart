import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/match.dart';

part 'match_model.g.dart';

@JsonSerializable()
class MatchModel extends Match {
  MatchModel({
    required String stadium,
    required String homeTeam,
    required String homeTeamLogo,
    required String awayTeam,
    required String awayTeamLogo,
  }) : super(
          stadium: stadium,
          homeTeam: homeTeam,
          homeTeamLogo: homeTeamLogo,
          awayTeam: awayTeam,
          awayTeamLogo: awayTeamLogo,
        );

  factory MatchModel.fromJson(Map<String, dynamic> json) {
    try {
      final stadium =
          json['fixture'] != null && json['fixture']['venue'] != null
              ? json['fixture']['venue']['name']
              : 'Unknown Stadium';
      final homeTeam = json['teams']['home'] != null
          ? json['teams']['home']['name']
          : 'Unknown Home Team';
      final homeTeamLogo =
          json['teams']['home'] != null ? json['teams']['home']['logo'] : '';
      final awayTeam = json['teams']['away'] != null
          ? json['teams']['away']['name']
          : 'Unknown Away Team';
      final awayTeamLogo =
          json['teams']['away'] != null ? json['teams']['away']['logo'] : '';

      return MatchModel(
        stadium: stadium,
        homeTeam: homeTeam,
        homeTeamLogo: homeTeamLogo,
        awayTeam: awayTeam,
        awayTeamLogo: awayTeamLogo,
      );
    } catch (e) {
      print('Error parsing JSON: $json');
      print('Exception: $e');
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$MatchModelToJson(this);
}
