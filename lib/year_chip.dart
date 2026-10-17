import 'package:flutter/material.dart';

class YearChip extends StatelessWidget {
  const YearChip({super.key, required this.year, this.large = false});

  final int year;
  final bool large;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: large ? 12 : 10,
        vertical: large ? 6 : 3,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF3E9F8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        '$year',
        style: TextStyle(
          color: const Color.fromARGB(255, 154, 27, 27),
          fontSize: large ? 16 : 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
