import 'package:flutter/material.dart';
import 'package:vazifa_jira_1/core/constant/size_config.dart';

class MyButton {
  static ElevatedButton MyElevatedButton(
      {required String text, Function()? onTap}) {
    return ElevatedButton(
      child: Text(text),
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          fixedSize: Size(getWidht(720), getHeight(80))),
    );
  }
}
