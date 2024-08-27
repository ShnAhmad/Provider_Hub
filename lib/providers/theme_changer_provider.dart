import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier {
  var _mode = ThemeMode.light;

  ThemeMode get mode => _mode;

  void setTheme(ThemeMode value) {
    _mode = value;
    notifyListeners();
  }
}
