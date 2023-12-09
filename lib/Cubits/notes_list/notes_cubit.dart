import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import '../../Models/Note_Model.dart';
import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notesList;
  fetchNotes() async {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      notesList = notesBox.values.toList();
      emit(NoteSuccess());

  }
}
