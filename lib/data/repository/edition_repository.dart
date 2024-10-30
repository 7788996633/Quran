import 'package:qu/data/models/edition_model.dart';
import 'package:qu/data/services/edition_services.dart';

import '../models/surah_model.dart';
import '../services/surah_services.dart';

class EditionRepository {
  
  Future<List<EditionModel>> getAllEdiions() async {
    final editions = await EditionServices().getAllEdiions();
    return editions.map((e) => EditionModel.fromJson(e)).toList();
  }
    Future<List<SurahModel>> getSurahByEdition(String id) async {
    final surah = await SurahServices().getSurahByEdition(id);

    return surah
        .map(
          (e) => SurahModel.fromJson(
            e,
          ),
        )
        .toList();
  }

}
