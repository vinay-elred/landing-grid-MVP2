import 'package:flutter/material.dart';
import 'package:landing_grid/src/utils/assets_utils.dart';

class LandingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LandingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Image.asset(
        AssetUtils.kelred,
        width: 72,
        height: 21,
      ),
      actions: [
        Row(
          children: [
            _buildAction(AssetUtils.kNetwork),
            const SizedBox(width: 10),
            _buildAction(AssetUtils.kNotificationBell),
            const SizedBox(width: 10),
            _buildAction(AssetUtils.kMenuGrid),
            const SizedBox(width: 20),
          ],
        ),
      ],
    );
  }

  Widget _buildAction(String asset) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          height: 24,
          width: 24,
          child: Image.asset(asset),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
