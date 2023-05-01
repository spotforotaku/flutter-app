import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  toggle() {
    _isDark = !_isDark;
    notifyListeners();
  }

  get icon {
    if (_isDark) {
      return const Icon(Icons.nights_stay);
    }
    return const Icon(Icons.wb_sunny);
  }
}
