import 'package:flutter/material.dart';

class LandingViewModel with ChangeNotifier {
  LandingNav selectedNav = LandingNav.home;
}

enum LandingNav {
  home,
  collabrate,
  fab,
  network,
  profile,
}
