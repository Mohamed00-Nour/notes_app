import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes/constants.dart';
import '../../Models/Note_Model.dart';
part 'add_note_state.dart';


class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
         await notesBox.add(note);
      emit(AddNoteSuccess());
    }  catch (e) {
      emit(AddNoteFailure(e.toString()));
    }

  }
}
