import 'package:flutter/material.dart';
import 'package:qu/data/models/surah_model.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({super.key, required this.surah});
  final SurahModel surah;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('surahAyahScreen', arguments: surah);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(surah.name),
        ),
      ),
    );
  }
}
