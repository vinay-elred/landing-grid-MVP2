import 'package:flutter/material.dart';
import 'package:landing_grid/src/ui/bottom_bar/nav_buttons/landing_nav_button.dart';
import 'package:landing_grid/src/ui/bottom_bar/nav_buttons/landing_profile_nav.dart';
import 'package:landing_grid/src/utils/assets_utils.dart';
import 'package:landing_grid/src/view_model/landing_view_model.dart';

class LandingBottomBar extends StatelessWidget {
  const LandingBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(36, 0, 36, 25),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow()],
        borderRadius: BorderRadius.circular(100),
      ),
      width: 200,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //HOME
          LandingNavButton(
            title: "Home",
            nav: LandingNav.home,
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset(
                AssetUtils.kHome,
                height: 30,
                width: 30,
              ),
            ),
          ),
          // Collabrate
          // LandingNavButton(
          //   nav: LandingNav.collabrate,
          //   icon: SvgPicture.asset(
          //     LandingUtils.navCollabrateSvg,
          //     height: 24,
          //     width: 24,
          //   ),
          // ),
          // FAB - Plus
          LandingNavButton(
            title: "I need",
            nav: LandingNav.fab,
            icon: Image.asset(
              AssetUtils.kNavPlus,
              height: 65,
              width: 65,
            ),
          ),
          // Network
          // LandingNavButton(
          //   nav: LandingNav.network,
          //   icon: SvgPicture.asset(
          //     LandingUtils.navNetworkSvg,
          //     height: 40,
          //     width: 40,
          //   ),
          // ),
          //Profile
          const LandingNavButton(
            title: "Profile",
            nav: LandingNav.profile,
            icon: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: LandingNavProfile(),
            ),
          )
        ],
      ),
    );
  }
}
