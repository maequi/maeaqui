import 'package:flutter/material.dart';

class ThemeManager extends ValueNotifier<bool> {
  ThemeManager() : super(true);

  bool get isBlue => value;

  void toggleTheme() {
    value = !value;
  }
}

final themeManager = ThemeManager();