import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/colors.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: white.withOpacity(0.8),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        );
  }
}