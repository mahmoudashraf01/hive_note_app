import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/text.dart';
import 'package:hive_note_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: h3Bold,
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}


