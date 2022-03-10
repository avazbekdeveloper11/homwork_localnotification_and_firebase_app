import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:vazifa_jira_1/core/colors/my_colors.dart';
import 'package:vazifa_jira_1/core/constant/size_config.dart';

class MyTextStyle {
  static TextStyle SimpleStyle({double size = 24}) =>
      TextStyle(fontSize: getHeight(size), color: MyColors.textColor);
}
