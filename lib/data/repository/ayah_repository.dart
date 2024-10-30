import 'package:qu/data/models/ayah_model.dart';
import 'package:qu/data/services/ayah_services.dart';

class AyahRepository {
  Future<List<AyahModel>> getAyah(String identifier) async {
    final ayahs = await AyahServices().getAyah(identifier);
    return ayahs
        .map(
          (e) => AyahModel.fromJson(e),
        )
        .toList();
  }
}
