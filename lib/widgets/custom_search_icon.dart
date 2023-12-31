import 'package:flutter/material.dart';
import 'package:hive_note_app/shared/themes/colors.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required IconData icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(18),

      ),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 27,
        ),
      ),
    );
  }
}