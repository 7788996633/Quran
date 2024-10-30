import 'package:flutter/material.dart';

import '../../data/models/edition_model.dart';
import '../widgets/surah_list.dart';

class EditionDetailScreen extends StatelessWidget {
  const EditionDetailScreen({super.key, required this.ed});
  final EditionModel ed;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text(ed.name),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Identifier: ${ed.identifier}",
                style: const TextStyle(fontSize: 25),
              ),
              const Divider(),
              Text(
                "English Name: ${ed.englishName}",
                style: const TextStyle(fontSize: 25),
              ),
              const Divider(),
              Text(
                "Language: ${ed.language}",
                style: const TextStyle(fontSize: 25),
              ),
              const Divider(),
              Text(
                "Type: ${ed.type}",
                style: const TextStyle(fontSize: 25),
              ),
              const Divider(),
              SurahList(currEd: ed,)
            ],
          ),
        ),
      ),
    );
  }
}
