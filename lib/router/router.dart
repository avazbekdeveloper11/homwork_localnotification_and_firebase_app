import 'package:flutter/material.dart';
import 'package:vazifa_jira_1/screens/login_page.dart';

class RouterGenerator {
  static Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomePage());
    }
    return null;
  }
}
