import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../../core/networking/api_service.dart';
import '../models/standing_model.dart';

abstract class StandingRemoteDataSource {
  Future<List<StandingModel>> getStandings();
}

class StandingDataSourceImpl implements StandingRemoteDataSource {
  final ApiService apiService;

  StandingDataSourceImpl(this.apiService);

  @override
  Future<List<StandingModel>> getStandings() async {
    final prefs = await SharedPreferences.getInstance();
    final cachedData = prefs.getString('standings');

    if (cachedData != null) {
      print('Using cached data');
      final List<dynamic> decodedData = jsonDecode(cachedData);
      final List<StandingModel> standings =
          decodedData.map((data) => StandingModel.fromJson(data)).toList();
      print('Cached data: $decodedData');
      return standings;
    } else {
      try {
        final response = await apiService.get('/standings', queryParameters: {
          'league': "233",
          'season': '2023',
        });
        print(response.data); // Debugging line

        final List<StandingModel> standings =
            (response.data['response'][0]['league']['standings'][0] as List)
                .map((data) => StandingModel.fromJson(data))
                .toList();

        // Cache the response
        final List<Map<String, dynamic>> jsonList =
            standings.map((standing) => standing.toJson()).toList();
        prefs.setString('standings', jsonEncode(jsonList));
        print('New data cached');
        return standings;
      } catch (e) {
        print('Error fetching standings: $e');
        rethrow;
      }
    }
  }
}
