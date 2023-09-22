import 'package:hive/hive.dart';
part 'notes_model.g.dart';

@HiveType(typeId: 0)
class NoteModle extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModle({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
