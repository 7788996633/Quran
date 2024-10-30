import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:qu/data/models/surah_model.dart';
import 'package:qu/data/repository/surah_repository.dart';

part 'surah_state.dart';

class SurahCubit extends Cubit<SurahState> {
  SurahCubit(this.surahRepository) : super(SurahInitial());
  final SurahRepository surahRepository;
  List<SurahModel> surah = [];
  List<SurahModel> allSurah(String id) {
    surahRepository.getSurahByEdition(id).then(
      (value) {
        emit(
          SurahsLoaded(surah: value),
        );
        surah = value;
      },
    );
    return surah;
  }
}
