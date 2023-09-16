import 'package:flutter/material.dart';
import 'package:hive_note_app/views/widgets/custom_text_field.dart';

class ButtomSheetAddNote extends StatelessWidget {
  const ButtomSheetAddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:const [
          SizedBox(
            height: 32,
          ),
          CustomTextField()
        ],
      ),
    );
  }
}