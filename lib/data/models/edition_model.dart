class EditionModel {
  final String identifier;
  final String language;
  final String name;
  final String englishName;
  final String format;
  final String type;
  final String? direction;

  EditionModel(
      {required this.identifier,
      required this.language,
      required this.name,
      required this.englishName,
      required this.format,
      required this.type,
      required this.direction});

  factory EditionModel.fromJson(data) {
    return EditionModel(
      identifier: data['identifier'],
      language: data['language'],
      name: data['name'],
      englishName: data['englishName'],
      format: data['format'],
      type: data['type'],
      direction: data['direction'],
    );
  }
}
