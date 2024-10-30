import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qu/cubit/surah_cubit.dart';
import 'package:qu/data/models/edition_model.dart';
import 'package:qu/presentaion/widgets/surah_item.dart';

import '../../data/models/surah_model.dart';

class SurahList extends StatefulWidget {
  const SurahList({super.key, required this.currEd});
  final EditionModel currEd;
  @override
  State<SurahList> createState() => _SurahListState();
}

class _SurahListState extends State<SurahList> {
  late List<SurahModel> suList;

  @override
  void initState() {
    BlocProvider.of<SurahCubit>(context).allSurah(widget.currEd.identifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.all(8),
      child: BlocBuilder<SurahCubit, SurahState>(
        builder: (context, state) {
          if (state is SurahsLoaded) {
            suList = state.surah;
            return GridView.builder(
              itemBuilder: (context, index) => SurahItem(
                surah: suList[index],
              ),
              itemCount: suList.length,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
