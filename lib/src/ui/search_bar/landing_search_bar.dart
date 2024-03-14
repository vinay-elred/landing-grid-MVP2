import 'package:flutter/material.dart';
import 'package:landing_grid/src/utils/assets_utils.dart';

class LandingSearchBar extends StatelessWidget {
  const LandingSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 118,
      margin: const EdgeInsets.only(bottom: 107),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF147BFF),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetUtils.kSearch,
            height: 18,
            width: 18,
          ),
          const SizedBox(width: 6),
          const Text(
            "Search",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
