import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubits/notes_list/notes_cubit.dart';
import '../Models/Note_Model.dart';
import '../Views/Edit_Note_View.dart';


class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EditNoteView()),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 20.0,
          bottom: 20.0,
          left: 16.0,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color:  Color(noteModel.Color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
                 noteModel.title,
                style: const TextStyle(fontSize: 26.0, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  noteModel.subTitle,
                  style: TextStyle(
                      fontSize: 18.0, color: Colors.black.withOpacity(0.6)),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.delete,
                  size: 40,
                ),
                onPressed: () {
                  noteModel.delete();
                  BlocProvider.of<NotesCubit>(context).fetchNotes();
                },
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(
                noteModel.date,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
