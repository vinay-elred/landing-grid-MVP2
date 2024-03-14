import 'package:flutter/material.dart';
import 'package:landing_grid/src/ui/appbar/landing_app_bar.dart';
import 'package:landing_grid/src/ui/bottom_bar/landing_bottom_bar.dart';
import 'package:landing_grid/src/ui/landing_grid/grid_builder.dart';
import 'package:landing_grid/src/ui/search_bar/landing_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const LandingAppBar(),
      body: Stack(
        children: [
          const GridBuilder(),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Center(
                child: LandingSearchBar(),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Center(
                child: LandingBottomBar(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
