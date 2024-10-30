import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qu/cubit/editions_cubit.dart';
import 'package:qu/presentaion/widgets/edition_item.dart';

import '../../data/models/edition_model.dart';

class EditionsScreen extends StatefulWidget {
  const EditionsScreen({super.key});

  @override
  State<EditionsScreen> createState() => _EditionsScreenState();
}

class _EditionsScreenState extends State<EditionsScreen> {
  late List<EditionModel> edList;
  @override
  void initState() {
    BlocProvider.of<EditionsCubit>(context).allEditions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: BlocBuilder<EditionsCubit, EditionsState>(
          builder: (context, state) {
            if (state is EditionsLoaded) {
              edList = state.editions;
              return ListView.builder(
                itemBuilder: (context, index) => EditionItem(
                  ed: edList[index],
                ),
                itemCount: edList.length,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
