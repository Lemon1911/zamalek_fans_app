import 'package:flutter_dotenv/flutter_dotenv.dart';

class NetworkConfig {
  static String get baseUrl =>
      dotenv.env['API_BASE_URL'] ?? 'https://v3.football.api-sports.io/';

  static Map<String, String> get headers => {
        'x-apisports-key': dotenv.env['API_KEY'] ?? '',
      };
}
