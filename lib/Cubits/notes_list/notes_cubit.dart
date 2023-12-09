import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import '../../Models/Note_Model.dart';
import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchNotes() async {
    emit(NotesLoading());
    try {
      List<NoteModel> notesList =  Hive.box<NoteModel>(kNotesBox).values.toList();
      emit(NotesSuccess(notesList));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
