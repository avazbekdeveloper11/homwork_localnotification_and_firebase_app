import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class HideShowPasswordProvider extends ChangeNotifier {
  bool isShow = true;

  void showHide() {
    isShow = !isShow;
    notifyListeners();
  }
}