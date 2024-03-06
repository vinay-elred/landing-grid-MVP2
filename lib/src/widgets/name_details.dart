import 'package:flutter/material.dart';

class NameDetails extends StatelessWidget {
  const NameDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Manoj Sharma",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        Text(
          "Flutter Developer",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10,
            color: Colors.white,
            height: 13 / 10,
          ),
        ),
        SizedBox(height: 2),
        Text(
          "Samsung India Pvt Ltd.",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 8,
            color: Colors.white,
            height: 13 / 8,
          ),
        )
      ],
    );
  }
}
