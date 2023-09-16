import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_note_app/shared/themes/colors.dart';
import 'package:hive_note_app/shared/themes/text.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 10,
        ),
        decoration: BoxDecoration(
          color: white2.withOpacity(0.9),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Notes',
                style: h5Bold.merge(
                  TextStyle(color: black),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                  'Move forward to learn flutter and know all new about this technology',
                  style: bodyBold.merge(
                    TextStyle(
                      color: black.withOpacity(0.6),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: black,
                  size: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'May15,2023',
                style: bodyBold.merge(
                  TextStyle(
                    color: black.withOpacity(0.6),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}