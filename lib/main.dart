import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:my_notes/Views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes/simple_bloc_observer.dart';
import 'Models/Note_Model.dart';
import 'constants.dart';

void main() async{
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, // Remove Debug Banner
      theme: ThemeData(
        fontFamily: "Poppins",
        brightness: Brightness.dark,
      ),
      home:const NotesView(),// Scaffold
    );
  }
}
