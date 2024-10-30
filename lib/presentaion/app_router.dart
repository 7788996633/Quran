import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qu/cubit/editions_cubit.dart';
import 'package:qu/cubit/surah_cubit.dart';
import 'package:qu/data/models/edition_model.dart';
import 'package:qu/data/models/surah_model.dart';
import 'package:qu/data/repository/edition_repository.dart';
import 'package:qu/data/repository/surah_repository.dart';
import 'package:qu/presentaion/screens/edition_detail_screen.dart';
import 'package:qu/presentaion/screens/editions_screen.dart';
import 'package:qu/presentaion/screens/surah_ayah_screen.dart';

class AppRouter {
  late EditionRepository editionRepository;
  late EditionsCubit editionsCubit;

  AppRouter() {
    editionRepository = EditionRepository();
    editionsCubit = EditionsCubit(editionRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => editionsCubit,
            child: const EditionsScreen(),
          ),
        );
      case 'editionDetailScreen':
        final edition = settings.arguments as EditionModel;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SurahCubit(
              SurahRepository(),
            ),
            child: EditionDetailScreen(
              ed: edition,
            ),
          ),
        );
      case 'surahAyahScreen':
        final surah = settings.arguments as SurahModel;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SurahCubit(
              SurahRepository(),
            ),
            child: SurahAyahScreen(
              surah: surah,
            ),
          ),
        );
    }
    return null;
  }
}
