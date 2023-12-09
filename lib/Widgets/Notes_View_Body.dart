import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubits/notes_list/notes_cubit.dart';
import 'Custom_App_Bar.dart';
import 'Notes_ListView.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 45.0,
          ),
          CustomAppBar(
            onPressed: () {},
            title: 'Notes',
            icon: Icons.search,
          ),
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
