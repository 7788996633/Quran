import 'package:qu/data/models/surah_model.dart';
import 'package:qu/data/services/surah_services.dart';

class SurahRepository {
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
