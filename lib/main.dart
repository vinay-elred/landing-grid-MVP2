import 'package:flutter/material.dart';
import 'package:landing_grid/src/ui/home_screen.dart';
import 'package:landing_grid/src/view_model/landing_view_model.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LandingViewModel(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
