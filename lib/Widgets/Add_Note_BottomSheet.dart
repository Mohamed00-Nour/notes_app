import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/Cubits/add_note_cubit/add_note_cubit.dart';
import '../Cubits/notes_list/notes_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage),
                  backgroundColor: Colors.red,
                ),
              );
            } else if (state is AddNoteSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Note Added Successfully"),
                  backgroundColor: Colors.green,
                ),
              );
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                padding:  EdgeInsets.only(left: 16 , right: 16 ,
                    bottom: MediaQuery.of(context).viewInsets.bottom,),
                child:  const SingleChildScrollView(
                  child: AddNoteForm(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
