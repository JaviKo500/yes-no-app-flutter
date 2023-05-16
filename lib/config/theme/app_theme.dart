import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49143F);

List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.black,
];

class AppTheme {
  final int selectedColor;

  AppTheme({ required this.selectedColor})
    : assert( selectedColor >= 0, 'Colors must be between 0 and ${ _colorThemes.length - 1 }' ),
      assert( selectedColor <= 7, 'Colors must be between 0 and ${ _colorThemes.length - 1 }' );

  ThemeData theme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
