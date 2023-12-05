import 'package:hive/hive.dart';
part 'Note_Model.g.dart';
@HiveType(typeId: 0) // HiveType


class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final DateTime date;
  @HiveField(3)
  final int Color;


  NoteModel({
    required this.title,
    required this.content,
    required this.date,
    required this.Color,
  });
}