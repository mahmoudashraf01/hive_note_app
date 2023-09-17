import 'package:flutter/material.dart';
import 'package:hive_note_app/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBarWithBackButton(),
        ],
      ),
    );
  }
}
