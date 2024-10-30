import 'package:qu/data/models/ayah_model.dart';

class SurahModel {
  final int number;
  final String name;
  final String englishName;
  final String englishNameTranslation;
  final String revelationType;
  final List<AyahModel> ayahs;

  SurahModel(
      {required this.number,
      required this.name,
      required this.englishName,
      required this.englishNameTranslation,
      required this.revelationType,
      required this.ayahs});

  factory SurahModel.fromJson(data) {
    List<AyahModel> ayahs = [];
    if (data['ayahs'] != null) {
      ayahs = List<AyahModel>.from(
        data['ayahs'].map(
          (ayahJson) => AyahModel.fromJson(ayahJson),
        ),
      );
    }

    return SurahModel(
      number: data['number'],
      name: data['name'],
      englishName: data['englishName'],
      englishNameTranslation: data['englishNameTranslation'],
      revelationType: data['revelationType'],
      ayahs: ayahs,
    );
  }
}
