class Character {
  final String id;
  final String height;
  final String race;
  final String gender;
  final String birth;
  final String spouse;
  final String death;
  final String realm;
  final String hair;
  final String name;
  final String wikiUrl;

  Character(
      {required this.id,
      required this.height,
      required this.race,
      required this.gender,
      required this.birth,
      required this.spouse,
      required this.death,
      required this.realm,
      required this.hair,
      required this.name,
      required this.wikiUrl});

  Character.fromJson(Map<String, dynamic> json)
      : id = json['_id'] ?? "",
        height = json['height'] ?? "",
        race = json['race'] ?? "",
        gender = json['gender'] ?? "",
        birth = json['birth'] ?? "",
        spouse = json['spouse'] ?? "",
        death = json['death'] ?? "",
        realm = json['realm'] ?? "",
        hair = json['hair'] ?? "",
        name = json['name'] ?? "",
        wikiUrl = json['wikiUrl'] ?? "";

  @override
  String toString() {
    return '$id $height $race $gender $birth $spouse $death $realm $hair $name $wikiUrl';
  }
}
