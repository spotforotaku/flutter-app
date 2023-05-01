import 'package:flutter/material.dart';
import 'package:otaku/theme.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDark = true;

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

  get themeData {
    if (_isDark) {
      return darkTheme;
    }
    return lightTheme;
  }
}
