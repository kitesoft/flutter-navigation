import 'package:flutter/material.dart';
import 'ANavigationService.dart';
import '../Views/FirstScreen.dart';
import '../Views/SecondScreen.dart';
import '../Views/ListViewScreen.dart';

class NavigationService implements ANavigationService {
  void navigate(PageToken pageToken, BuildContext context) {
    switch (pageToken) {
      case PageToken.FirstScreen:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FirstScreen()),
        );
        break;
      case PageToken.SecondScreen:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondScreen()),
        );
        break;
      case PageToken.ListViewScreen:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListViewScreen()),
        );
        break;
    }
  }
}
