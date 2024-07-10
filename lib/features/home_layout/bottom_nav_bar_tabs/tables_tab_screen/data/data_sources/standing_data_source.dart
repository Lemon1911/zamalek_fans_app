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
    final response = await apiService.get('/standings', queryParameters: {
      'league': "233",
      'season': '2023',
    });
    print(response.data); // Debugging line

    final standings =
        (response.data['response'][0]['league']['standings'][0] as List)
            .map((data) => StandingModel.fromJson(data))
            .toList();

    return standings;
  }
}
