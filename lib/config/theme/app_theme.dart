import 'package:flutter/material.dart';

const  listColor = <Color> [
  Colors.blue,
  Colors.amber,
  Colors.green,
  Colors.red,
  Colors.yellow,
  Colors.purple,
  Colors.pink
];


class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }):assert ( selectedColor >= 0, ' selecciona un color que sea mayor a 0'),
     assert ( selectedColor < listColor.length, 
              'el color no puede ser maoyor a ${listColor.length -1}}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: listColor[ selectedColor ],
  );
  
}