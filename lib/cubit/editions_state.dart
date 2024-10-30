part of 'editions_cubit.dart';

@immutable
sealed class EditionsState {}

final class EditionsInitial extends EditionsState {}

final class EditionsLoaded extends EditionsState {
  final List<EditionModel> editions;

  EditionsLoaded({required this.editions});
}

final class SurahLoaded extends EditionsState {
  final List<SurahModel> surah;

  SurahLoaded({required this.surah});
}
