import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: blue3.withOpacity(1),
      decoration: InputDecoration(
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
