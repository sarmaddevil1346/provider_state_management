import 'package:flutter/material.dart';

class OpacityExampleCounter extends ChangeNotifier{

  double  _opacity = 0;

  double get opacity => _opacity;
 void opacityControl(double opacity1)
  {
    _opacity = opacity1;
    notifyListeners();

  }

}