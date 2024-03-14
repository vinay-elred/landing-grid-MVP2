import 'package:flutter/material.dart';
import 'package:landing_grid/src/model/card_data_model.dart';

class NameDetails extends StatelessWidget {
  const NameDetails({super.key, required this.data});
  final CardDataModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          data.name,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.white,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
        Text(
          data.title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10,
            color: Colors.white,
            height: 13 / 10,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          data.company,
          style: const TextStyle(
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
