import 'package:flutter/material.dart';
import 'package:landing_grid/src/grid_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Demo"),
      ),
      body: const GridBuilder(),
    );
  }
}
