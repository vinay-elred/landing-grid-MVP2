// import 'package:flutter/material.dart';

// enum LandingNav {
//   home,
//   collabrate,
//   fab,
//   network,
//   profile,
// }

// class LandingNavButton extends StatelessWidget {
//   const LandingNavButton({
//     super.key,
//     required this.icon,
//     required this.nav,
//   });
//   final Widget icon;
//   final LandingNav nav;

//   @override
//   Widget build(BuildContext context) {
//     final viewModel = context.read<LandingViewModel>();
//     return Selector<LandingViewModel, LandingNav>(
//       selector: (_, viewModel) => viewModel.selectedNav,
//       builder: (context, selectedNav, child) {
//         final bool isSelected = nav == selectedNav;
//         double radii = (nav == LandingNav.fab) ? 40 : 24;

//         return AnimatedSwitcher(
//           duration: const Duration(milliseconds: 500),
//           switchInCurve: Curves.easeIn,
//           child: Material(
//             color: isSelected ? Colors.white : Colors.transparent,
//             borderRadius: BorderRadius.circular(radii),
//             child: InkWell(
//               onTap: () {
//                 if (nav == LandingNav.fab) return;
//                 viewModel.setselectedIndex = nav;
//               },
//               borderRadius: BorderRadius.circular(radii),
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   const SizedBox(
//                     height: 40,
//                     width: 40,
//                   ),
//                   child!,
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//       child: icon,
//     );
//   }
// }
