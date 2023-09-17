import 'package:flutter/material.dart';
import 'package:hive_note_app/widgets/custom_text_field.dart';
import 'package:hive_note_app/widgets/cutom_buttom.dart';

class ButtomSheetAddNote extends StatelessWidget {
  const ButtomSheetAddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: const [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Note Title',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 6,
            ),
            SizedBox(
              height: 100,
            ),
            CustomButtom(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}


