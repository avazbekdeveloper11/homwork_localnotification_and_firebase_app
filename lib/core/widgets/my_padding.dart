import 'package:flutter/widgets.dart';
import 'package:vazifa_jira_1/core/constant/size_config.dart';

class MyPadding {
  //? PADDING ONLY
  static Padding paddingOnly({
    required child,
    double right = 0,
    double left = 0,
    double top = 0,
    double bottom = 0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          left: getWidht(left),
          right: getWidht(right),
          top: getHeight(top),
          bottom: getHeight(bottom),
        ),
        child: child,
      );

  //? PADDING ALL
  static Padding paddingAll({
    required child,
    double all = 0,
  }) =>
      Padding(
        padding: EdgeInsets.all(
          getWidht(all),
        ),
        child: child,
      );

  //? PADDING Symmetric
  static Padding paddingSymmetric({
    required child,
    double horizontal = 0,
    double vertical = 0,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getWidht(horizontal),
          vertical: getHeight(vertical),
        ),
        child: child,
      );
}
