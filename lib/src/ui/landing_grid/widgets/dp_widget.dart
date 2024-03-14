import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DpWidget extends StatelessWidget {
  const DpWidget({super.key, required this.dpUrl});
  final String dpUrl;

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
            imageUrl: dpUrl,
            fit: BoxFit.cover,
            height: 72,
            width: 72,
          ),
        ),
      ),
    );
  }
}
