import 'package:flutter/material.dart';
import 'package:qu/data/models/ayah_model.dart';

class AyahItem extends StatelessWidget {
  const AyahItem({super.key, required this.ayah});
  final AyahModel ayah;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(ayah.text),
      ),
    );
  }
}
