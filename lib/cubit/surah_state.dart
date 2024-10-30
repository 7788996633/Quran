part of 'surah_cubit.dart';


@immutable
sealed class SurahState {}

final class SurahInitial extends SurahState {}

final class SurahsLoaded extends SurahState {
  final List<SurahModel> surah;

  SurahsLoaded({required this.surah});
}
