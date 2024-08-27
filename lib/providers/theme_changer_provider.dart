import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ThemeChangerProvider with ChangeNotifier {
  var _mode = ThemeMode.light;
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeMode get mode => _mode;

  void setTheme(bool value) {
    if (value) {
      _isDarkMode = value;
      _mode = ThemeMode.dark;
    } else {
      _isDarkMode = value;
      _mode = ThemeMode.light;
    }

    notifyListeners();
  }
}
