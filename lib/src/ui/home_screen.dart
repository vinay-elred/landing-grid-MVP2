import 'package:flutter/material.dart';
import 'package:landing_grid/src/ui/appbar/landing_app_bar.dart';
import 'package:landing_grid/src/ui/landing_grid/grid_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: LandingAppBar(),
      body: GridBuilder(),
    );
  }
}
