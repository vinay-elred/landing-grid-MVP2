import 'package:flutter/material.dart';
import 'package:landing_grid/src/view_model/landing_view_model.dart';
import 'package:provider/provider.dart';

class LandingNavButton extends StatelessWidget {
  const LandingNavButton({
    super.key,
    required this.icon,
    required this.nav,
    required this.title,
  });
  final Widget icon;
  final LandingNav nav;
  final String title;

  @override
  Widget build(BuildContext context) {
    // final viewModel = context.read<LandingViewModel>();
    return Selector<LandingViewModel, LandingNav>(
      selector: (_, viewModel) => viewModel.selectedNav,
      builder: (context, selectedNav, child) {
        final bool isSelected = nav == selectedNav;
        double radii = (nav == LandingNav.fab) ? 40 : 24;

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          switchInCurve: Curves.easeIn,
          child: Material(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(radii),
            child: InkWell(
              onTap: () {
                // if (nav == LandingNav.fab) return;
                // viewModel.setselectedIndex = nav;
              },
              borderRadius: BorderRadius.circular(radii),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  const SizedBox(
                    height: 60,
                    width: 40,
                  ),
                  child!,
                  Positioned(
                    top: 40,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight:
                            isSelected ? FontWeight.w600 : FontWeight.w500,
                        height: 15 / 10,
                        color:
                            isSelected ? Colors.red : const Color(0xFF686868),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: icon,
    );
  }
}
