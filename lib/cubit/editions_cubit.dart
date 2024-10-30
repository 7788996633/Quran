import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:qu/data/models/edition_model.dart';
import 'package:qu/data/repository/edition_repository.dart';

import '../data/models/surah_model.dart';

part 'editions_state.dart';

class EditionsCubit extends Cubit<EditionsState> {
  EditionsCubit(this.editionRepository) : super(EditionsInitial());
  final EditionRepository editionRepository;

      List<EditionModel> editions = [];
  List<SurahModel> surah = [];

  List<EditionModel> allEditions() {
    editionRepository.getAllEdiions().then(
      (value) {
        emit(
          EditionsLoaded(editions: value),
        );
        editions = value;
      },
    );
    return editions;
  }
  List<SurahModel> allSurah(String id) {
    editionRepository.getSurahByEdition(id).then(
      (value) {
        emit(
          SurahLoaded(surah: value),
        );
        surah = value;
      },
    );
    return surah;
  }

}
