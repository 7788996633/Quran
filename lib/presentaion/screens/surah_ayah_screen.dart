import 'package:flutter/material.dart';
import 'package:qu/data/models/surah_model.dart';
import 'package:qu/presentaion/widgets/ayah_list.dart';

class SurahAyahScreen extends StatelessWidget {
  const SurahAyahScreen({super.key, required this.surah});
  final SurahModel surah;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(surah.name),
      ),
      body: AyahList(surah: surah),
    );
  }
}
