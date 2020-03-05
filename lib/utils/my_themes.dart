import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.blue,
      //Color del fondo de la aplicación
      scaffoldBackgroundColor: const Color(0xfff9f9f9),
      //Theme de los iconos
      primaryIconTheme: IconThemeData(
        color: Colors.grey[800],
      ),
      fontFamily: 'Open Sans',
      //Color de fondo del Drawer
      canvasColor: Color(0xfff9f9f9));

  static Color accentColor = Colors.redAccent;
  static Color accentColorConstrast = Colors.grey[100];
  static Color accentColorLight = Colors.red[100];

  static Color secondaryColor = Colors.blueGrey[900];
  static Color secondaryColorContrast = Colors.grey[400];

  static Color thirdColor = Colors.grey[600];

TabBarTheme tabBarTheme = TabBarTheme(

);
  
}

