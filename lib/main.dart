import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/colors.dart';
import 'package:hive_note_app/views/notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: blue3.withOpacity(1),
      ),
      home: NotesView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
