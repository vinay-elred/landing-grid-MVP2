import 'package:flutter/material.dart';

class UserTags extends StatelessWidget {
  const UserTags({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        tag("UI / UX"),
        const SizedBox(width: 3),
        tag("Flutter"),
      ],
    );
  }

  Widget tag(String data) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      child: Text(
        data,
        style: const TextStyle(
          fontSize: 6.5,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
