import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/colors.dart';
import 'package:hive_note_app/shared/themes/text.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: blue3,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          'Add Note',
          style: title1Bold,
        ),
      ),
    );
  }
}