import 'package:flutter/material.dart';
import 'package:qu/data/models/surah_model.dart';
import 'package:qu/presentaion/widgets/ayah_item.dart';

class AyahList extends StatelessWidget {
  const AyahList({super.key, required this.surah});
  final SurahModel surah;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) => AyahItem(
        ayah: surah.ayahs[index],
      ),
      itemCount: surah.ayahs.length,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
