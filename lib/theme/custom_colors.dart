import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: Color.fromRGBO(139, 195, 74, 0.1),
  100: Color.fromRGBO(139, 195, 74, 0.2),
  200: Color.fromRGBO(139, 195, 74, 0.3),
  300: Color.fromRGBO(139, 195, 74, 0.4),
  400: Color.fromRGBO(139, 195, 74, 0.5),
  500: Color.fromRGBO(139, 195, 74, 0.6),
  600: Color.fromRGBO(139, 195, 74, 0.7),
  700: Color.fromRGBO(139, 195, 74, 0.8),
  800: Color.fromRGBO(139, 195, 74, 0.9),
  900: Color.fromRGBO(139, 195, 74, 1),
};

abstract class CustomColors {
  static  Color customContrasticColor = Colors.red.shade700;

  static MaterialColor customSwatch = MaterialColor(0xFF8BC34A, _swatchOpacity);
}