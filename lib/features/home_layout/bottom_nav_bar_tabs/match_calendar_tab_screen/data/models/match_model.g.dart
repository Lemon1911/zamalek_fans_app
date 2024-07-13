// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchModel _$MatchModelFromJson(Map<String, dynamic> json) => MatchModel(
      stadium: json['stadium'] as String,
      homeTeam: json['homeTeam'] as String,
      homeTeamLogo: json['homeTeamLogo'] as String,
      awayTeam: json['awayTeam'] as String,
      awayTeamLogo: json['awayTeamLogo'] as String,
    );

Map<String, dynamic> _$MatchModelToJson(MatchModel instance) =>
    <String, dynamic>{
      'stadium': instance.stadium,
      'homeTeam': instance.homeTeam,
      'homeTeamLogo': instance.homeTeamLogo,
      'awayTeam': instance.awayTeam,
      'awayTeamLogo': instance.awayTeamLogo,
    };
