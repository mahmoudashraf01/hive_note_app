import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/colors.dart';
import 'package:hive_note_app/shared/themes/text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
     this.maxLines = 1,
  });

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: blue3.withOpacity(1),
      maxLines: maxLines,
      decoration: InputDecoration(
        label: Text(hint),
        floatingLabelStyle: TextStyle(color: blue3.withOpacity(1)),
        labelStyle: title1Bold.merge(
          TextStyle(
            color: white.withOpacity(0.8),
            fontSize: 18,
          ),
        ),
        border: cutomBorder(),
        enabledBorder: cutomBorder(),
        focusedBorder: cutomBorder(color: blue3.withOpacity(1)),
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
