import 'package:flutter/material.dart';

class Theme_Provider with ChangeNotifier {
  bool _isDarkTheme = false;

  bool get isDarkTheme {
    return _isDarkTheme;
  }

  void switch_theme(bool value) {
    _isDarkTheme = value;
    notifyListeners();
  }
}
