class StandingModel {
  final int rank;
  final String teamName;
  final String teamLogo;
  final int points;
  final int played;
  final int win;
  final int draw;
  final int lose;

  StandingModel({
    required this.rank,
    required this.teamName,
    required this.teamLogo,
    required this.points,
    required this.played,
    required this.win,
    required this.draw,
    required this.lose,
  });

  factory StandingModel.fromJson(Map<String, dynamic> json) {
    return StandingModel(
      rank: json['rank'] ?? 0,
      teamName: json['team']['name'] ?? 'Unknown',
      teamLogo: json['team']['logo'] ?? '',
      points: json['points'] ?? 0,
      played: json['all']['played'] ?? 0,
      win: json['all']['win'] ?? 0,
      draw: json['all']['draw'] ?? 0,
      lose: json['all']['lose'] ?? 0,
    );
  }
}
