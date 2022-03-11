import 'package:flutter/material.dart';
import 'package:vazifa_jira_1/screens/home_page.dart';
import 'package:vazifa_jira_1/screens/login_page.dart';

class RouterGenerator {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => LoginPage());
      case "/home":
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
    return null;
  }
}
