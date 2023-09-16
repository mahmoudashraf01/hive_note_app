import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/colors.dart';
import 'package:hive_note_app/shared/themes/text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: blue3.withOpacity(1),
      decoration: InputDecoration(
        label: Text('Note Title'),
        labelStyle: title1Bold.merge(
          TextStyle(
            color: blue3.withOpacity(0.5),
            fontSize: 18,
          ),
        ),
        border: cutomBorder(),
        enabledBorder: cutomBorder(),
        focusedBorder: cutomBorder(
          color: blue3.withOpacity(1),
        ),
      ),
    );
  }

  OutlineInputBorder cutomBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? white),
    );
  }
}
