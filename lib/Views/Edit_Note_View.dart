import 'package:flutter/material.dart';
import '../Models/Note_Model.dart';
import '../Widgets/Edit_Note_View_Body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
