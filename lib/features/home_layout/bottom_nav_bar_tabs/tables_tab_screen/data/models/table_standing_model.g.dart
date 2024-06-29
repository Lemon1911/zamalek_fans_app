// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_standing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamStandingData _$TeamStandingDataFromJson(Map<String, dynamic> json) =>
    TeamStandingData(
      rank: (json['rank'] as num).toInt(),
      team: json['team'] as String,
      points: (json['points'] as num).toInt(),
      goalsDiff: (json['goalsDiff'] as num).toInt(),
    );

Map<String, dynamic> _$TeamStandingDataToJson(TeamStandingData instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'team': instance.team,
      'points': instance.points,
      'goalsDiff': instance.goalsDiff,
    };
