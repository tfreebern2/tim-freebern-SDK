class Movie {
  final String id;
  final String name;
  final int runtimeInMinutes;
  final int budgetInMillions;
  final double boxOfficeRevenueInMillions;
  final int academyAwardNominations;
  final int academyAwardWins;
  final double rottenTomatoesScore;

  Movie(
      {required this.id,
      required this.name,
      required this.runtimeInMinutes,
      required this.budgetInMillions,
      required this.boxOfficeRevenueInMillions,
      required this.academyAwardNominations,
      required this.academyAwardWins,
      required this.rottenTomatoesScore});

  Movie.fromJson(Map<String, dynamic> json)
      : id = json['_id'] ?? "",
        name = json['name'] ?? "",
        runtimeInMinutes = json['runtimeInMinutes'] ?? 0,
        budgetInMillions = json['budgetInMillions'] ?? 0,
        boxOfficeRevenueInMillions = json['boxOfficeRevenueInMillions'] != null
            ? double.parse(json['boxOfficeRevenueInMillions'].toString())
            : 0,
        academyAwardNominations = json['academyAwardNominations'] ?? 0,
        academyAwardWins = json['academyAwardWins'] ?? 0,
        rottenTomatoesScore = json['rottenTomatoesScore'] != null
            ? double.parse(json['rottenTomatoesScore'].toString())
            : 0;

  @override
  String toString() {
    return '$id $name $runtimeInMinutes $budgetInMillions $boxOfficeRevenueInMillions $academyAwardNominations $academyAwardWins $rottenTomatoesScore';
  }
}
