import 'package:flutter/material.dart';
import 'package:vazifa_jira_1/core/colors/my_colors.dart';

class MyAppBar {
  String title;
  bool? centerTitle;

  MyAppBar({Key? key, required this.title, this.centerTitle = true});

  @override
  PreferredSizeWidget getAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.appBarColor,
      centerTitle: centerTitle,
      title: Text(title),
    );
  }
}
