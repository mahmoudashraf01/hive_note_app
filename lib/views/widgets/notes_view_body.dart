import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/colors.dart';
import 'package:hive_note_app/shared/themes/text.dart';
import 'package:hive_note_app/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          NotesItem(),
        ],
      ),
    );
  }
}

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: blue3,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Notes',
              style: title1Bold.merge(
                TextStyle(color: black),
              ),
            ),
            subtitle: Text(
              'Move forward to learn flutter',
              style: bodyBold.merge(
                TextStyle(
                  color: black.withOpacity(0.6),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: black,
                size: 30,
              ),
            ),
          ),
          Text(
            'May15,2023',
            style: bodyBold.merge(
              TextStyle(
                color: black.withOpacity(0.6),
              ),
            ),
          )
        ],
      ),
    );
  }
}
