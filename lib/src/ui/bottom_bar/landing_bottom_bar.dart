// import 'package:flutter/material.dart';
// import 'package:landing_grid/src/bottom_bar/nav_buttons/landing_nav_button.dart';

// class LandingBottomBar extends StatelessWidget {
//   const LandingBottomBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.fromLTRB(36, 0, 36, 25),
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       decoration: BoxDecoration(
//         color: const Color.fromRGBO(255, 255, 255, 0.70),
//         boxShadow: const [BoxShadow()],
//         borderRadius: BorderRadius.circular(100),
//       ),
//       width: 200,
//       height: 70,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           //HOME
//           const LandingNavButton(
//             nav: LandingNav.home,
//             icon: Icon(
//               Icons.home_filled,
//             ),
//           ),
//           // Collabrate
//           LandingNavButton(
//             nav: LandingNav.collabrate,
//             icon: SvgPicture.asset(
//               LandingUtils.navCollabrateSvg,
//               height: 24,
//               width: 24,
//             ),
//           ),
//           // FAB - Plus
//           LandingNavButton(
//             nav: LandingNav.fab,
//             icon: Padding(
//               padding: const EdgeInsets.only(top: 2.0),
//               child: SvgPicture.asset(
//                 LandingUtils.navFabSvg,
//                 height: 65,
//                 width: 65,
//               ),
//             ),
//           ),
//           // Network
//           LandingNavButton(
//             nav: LandingNav.network,
//             icon: SvgPicture.asset(
//               LandingUtils.navNetworkSvg,
//               height: 40,
//               width: 40,
//             ),
//           ),
//           //Profile
//           const LandingNavButton(
//             nav: LandingNav.profile,
//             icon: LandingNavProfile(),
//           )
//         ],
//       ),
//     );
//   }
// }
