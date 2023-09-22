import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/text.dart';
import 'package:hive_note_app/widgets/back_button.dart';
import 'package:hive_note_app/widgets/custom_search_icon.dart';

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
        CustomSearchIcon(
          icon: Icons.search,
        ),
      ],
    );
  }
}

class CustomAppBarWithBackButton extends StatelessWidget {
  const CustomAppBarWithBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyBackButton(),
        Text(
          'Edit Your Note',
          style: h5Bold,
        ),
        Spacer(),
        CustomSearchIcon(
          icon: Icons.check,
        ),
      ],
    );
  }
}
