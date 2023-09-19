import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  var _theme = ThemeMode.light;

   get theme => _theme;
  void themeSet(theme) {
    _theme = theme;
    notifyListeners();
  }
}
