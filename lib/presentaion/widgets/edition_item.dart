import 'package:flutter/material.dart';
import 'package:qu/data/models/edition_model.dart';

class EditionItem extends StatelessWidget {
  const EditionItem({super.key, required this.ed});
  final EditionModel ed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('editionDetailScreen',arguments: ed
        );
      },
      child: Card(
        child: SizedBox(
          height: 80,
          child: Center(
            child: Text(
              textDirection:
                  ed.direction == "rtl" ? TextDirection.rtl : TextDirection.ltr,
              ed.name,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
