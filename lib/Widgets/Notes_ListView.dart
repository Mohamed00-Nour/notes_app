import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/Cubits/notes_list/notes_cubit.dart';

import '../Models/Note_Model.dart';
import 'Note_Item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>? notesList = BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notesList.length,
            padding: const EdgeInsets.all(0.0),
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: NoteItem(
                  noteModel : notesList[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
