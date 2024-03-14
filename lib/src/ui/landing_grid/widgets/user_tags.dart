import 'package:flutter/material.dart';
import 'package:landing_grid/src/model/card_data_model.dart';

class UserTags extends StatelessWidget {
  const UserTags({super.key, required this.data});
  final CardDataModel data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        tag(data.tags[0]),
        const SizedBox(width: 3),
        tag(data.tags[1]),
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
