import 'package:flutter/material.dart';

class AppColors {
  Color white = Color.fromRGBO(255, 255, 255, 1.0);
  Color black = Color.fromRGBO(13, 14, 18, 1.0);
  Color yellow = Color.fromRGBO(255, 213, 87, 1.0);
  Color red = Color.fromRGBO(238, 94, 104, 1.0);
  Color orange = Color.fromRGBO(245, 155, 6, 1.0);
  Color green = Color.fromRGBO(76, 183, 77, 1.0);
  Color background = Color.fromRGBO(249, 247, 249, 1.0);

  Color primary;
  Color primaryDark;
  Color primaryLight;
  Color primaryUltraLight;
  Color secondary;
  Color secondaryLight;

  AppColors(); //Empty Constructor
  factory AppColors.opsColors() { //Named Constructor
    AppColors colors = AppColors();
    colors.primary = Color.fromRGBO(1, 96, 162, 1.0);
    colors.primaryDark = Color.fromRGBO(0, 74, 152, 1.0);
    colors.primaryLight = Color.fromRGBO(38, 153, 214, 1.0);
    colors.primaryUltraLight = Color.fromRGBO(192, 214, 234, 1.0);
    colors.secondary = Color.fromRGBO(85, 85, 85, 1.0);
    colors.secondaryLight = Color.fromRGBO(193, 193, 193, 1.0);
    return colors;
  }

}

final opsColors = AppColors.opsColors();