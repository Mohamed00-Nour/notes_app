import 'package:flutter/material.dart';
import 'package:my_notes/Views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Models/Note_Model.dart';
import 'constants.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
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
