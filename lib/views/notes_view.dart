import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/colors.dart';
import 'package:hive_note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) {
            return ButtomSheetAdd();
          },);
        },
        backgroundColor: blue3.withOpacity(1),
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}


