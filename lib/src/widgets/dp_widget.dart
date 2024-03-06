import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DpWidget extends StatelessWidget {
  const DpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 72,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(72 / 2),
          child: CachedNetworkImage(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-zsO-WB5sqXt2_4XGhgNqeecBwQ2dm2dTFcV4NBR0hBIK9nlKRuIz8HUwEo-eEteJBm4&usqp=CAU",
            fit: BoxFit.cover,
            height: 72,
            width: 72,
          ),
        ),
      ),
    );
  }
}
