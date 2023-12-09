import 'package:hive/hive.dart';
part 'Note_Model.g.dart';
@HiveType(typeId: 0) // HiveType


class NoteModel extends HiveObject {
  @HiveField(0)
   String title;
  @HiveField(1)
   String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int Color;


  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.Color,
  });
}