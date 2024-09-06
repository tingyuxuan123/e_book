import 'package:e_book/themes/dark_theme.dart';
import 'package:e_book/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeDate = lightMode;

  ThemeData get lightTheme => lightMode;
  ThemeData get darkTheme => darkMode;

  ThemeData get themeDate => _themeDate;

  void toggleTheme() {
    _themeDate = _themeDate == lightMode ? darkMode : lightMode;
    notifyListeners();
  }
}
