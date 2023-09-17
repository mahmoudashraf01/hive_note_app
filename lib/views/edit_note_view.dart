import 'package:flutter/material.dart';
import 'package:hive_note_app/widgets/back_button.dart';
import 'package:hive_note_app/widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: MyBackButton(),
      ),
      body: EditNoteViewBody(),
    );
  }
}
