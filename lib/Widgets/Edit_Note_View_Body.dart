import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/Widgets/Custom_TextField.dart';
import '../Cubits/notes_list/notes_cubit.dart';
import '../Models/Note_Model.dart';
import 'Custom_App_Bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
 String? title , content;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 45.0,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title?? widget.note.title;
              widget.note.subTitle = content?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50.0,
          ),
           CustomTextField(hintText: widget.note.title,
          onChanged: (value){
            title = value;
          },
          ),
          const SizedBox(
            height: 20.0,
          ),
           CustomTextField(hintText:widget.note.subTitle, maxLines: 5,
          onChanged: (value){
            content = value;
          },
          ),
        ],
      ),
    );
  }
}
