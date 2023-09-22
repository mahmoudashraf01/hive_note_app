import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_note_app/constants.dart';
import 'package:hive_note_app/cubits/add_notes_cubit.dart';
import 'package:hive_note_app/models/notes_model.dart';
import 'package:hive_note_app/shared/themes/colors.dart';
import 'package:hive_note_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModleAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNotesCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Notes App',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: blue3.withOpacity(1),
        ),
        home: NotesView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
