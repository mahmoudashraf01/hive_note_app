import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/colors.dart';

import 'package:hive_note_app/widgets/cutom_buttom_sheet.dart';
import 'package:hive_note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            context: context,
            builder: (context) {
              return ButtomSheetAddNote();
            },
          );
        },
        backgroundColor: blue3.withOpacity(1),
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
