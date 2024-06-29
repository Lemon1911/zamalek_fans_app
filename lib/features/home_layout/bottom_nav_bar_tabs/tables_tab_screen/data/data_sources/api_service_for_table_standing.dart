import '../../../../../../core/networking/api_service.dart';
import '../models/table_standing_model.dart';

class StandingsService {
  final ApiService _apiService;

  StandingsService(this._apiService);

  Future<List<TeamStandingData>> fetchStandings(
      String leagueId, String season) async {
    final response = await _apiService.get(
      'standings',
      queryParameters: {'league': leagueId, 'season': season},
    );

    final data = response.data['response'][0]['league']['standings'][0] as List;
    return data.map((json) => TeamStandingData.fromJson(json)).toList();
  }
}
