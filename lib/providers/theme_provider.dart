import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/themes/dark.dart';
import 'package:mezgebe_sbhat/themes/light.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = light;

  ThemeData get themeData => _themeData;

  bool get isDark => _themeData == dark;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    _themeData = isDark ? light : dark;
    notifyListeners();
  }
}
