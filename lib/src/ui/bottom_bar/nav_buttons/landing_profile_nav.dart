import 'package:flutter/material.dart';
import 'package:landing_grid/src/utils/assets_utils.dart';

class LandingNavProfile extends StatelessWidget {
  const LandingNavProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
      ),
      child: Image.asset(
        AssetUtils.kProfile,
        fit: BoxFit.cover,
      ),
    );
  }
}
