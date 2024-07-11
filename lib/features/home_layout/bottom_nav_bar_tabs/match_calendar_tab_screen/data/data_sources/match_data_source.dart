import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../../core/networking/api_service.dart';
import '../models/match_model.dart';

abstract class MatchRemoteDataSource {
  Future<List<MatchModel>> getPastMatches();

  Future<List<MatchModel>> getUpcomingMatches();
}

class MatchDataSourceImpl implements MatchRemoteDataSource {
  final ApiService apiService;

  MatchDataSourceImpl(this.apiService);

  @override
  Future<List<MatchModel>> getPastMatches() async {
    final prefs = await SharedPreferences.getInstance();
    final cachedData = prefs.getString('past_matches');

    if (cachedData != null) {
      final List<dynamic> decodedData = jsonDecode(cachedData);
      final List<MatchModel> matches =
          decodedData.map((data) => MatchModel.fromJson(data)).toList();
      return matches;
    } else {
      try {
        final response = await apiService.get('/fixtures', queryParameters: {
          'team': 1040,
          'season': '2023',
          'status': 'FT',
        });

        final List<MatchModel> matches = (response.data['response'] as List)
            .map((data) => MatchModel.fromJson(data))
            .toList();

        final List<Map<String, dynamic>> jsonList =
            matches.map((match) => match.toJson()).toList();
        prefs.setString('past_matches', jsonEncode(jsonList));
        return matches;
      } catch (e) {
        print('Error fetching past matches: $e');
        rethrow;
      }
    }
  }

  @override
  Future<List<MatchModel>> getUpcomingMatches() async {
    final prefs = await SharedPreferences.getInstance();
    final cachedData = prefs.getString('upcoming_matches');

    if (cachedData != null) {
      final List<dynamic> decodedData = jsonDecode(cachedData);
      final List<MatchModel> matches =
          decodedData.map((data) => MatchModel.fromJson(data)).toList();
      return matches;
    } else {
      try {
        final response = await apiService.get('/fixtures', queryParameters: {
          'team': 1040,
          'season': '2023',
          'status': 'NS',
        });

        final List<MatchModel> matches = (response.data['response'] as List)
            .map((data) => MatchModel.fromJson(data))
            .toList();

        final List<Map<String, dynamic>> jsonList =
            matches.map((match) => match.toJson()).toList();
        prefs.setString('upcoming_matches', jsonEncode(jsonList));
        return matches;
      } catch (e) {
        print('Error fetching upcoming matches: $e');
        rethrow;
      }
    }
  }
}
