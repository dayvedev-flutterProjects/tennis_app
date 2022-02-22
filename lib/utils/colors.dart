

import 'package:flutter/material.dart';

class AppColors   {

  // static Color colorPrimary = Colors.blue[700];
  static const colorPrimary = Color(0xff2b5c32); //RGB(220,36,40)
  static const colorPrimaryDark = Color(0xff00320b);
  static const colorAccent = Color(0xff588a5c);

  static const colorPrimaryBg = Color(0xffecf3e4);

  static const appGreen = Color(0xff4C5031);
  static const appDarkGreen = Color(0xff242809);
  static const appAccentGreen = Color(0xff787c5b);

  static const appLightGreen = Color(0xffAEBA7F);





  //Method to autogenerate custom color swatch
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

  Map<int, Color> color =
  {
    50: const Color(0xff95ae99),//10%
    100: const Color(0xff809d84),//20%
    200: const Color(0xff6b8d70),//30%
    300: const Color(0xff557d5b),//40%
    400: const Color(0xff406c47),//50%
    500: const Color(0xff2b5c32),//60%
    600: const Color(0xff27532d),//70%
    700: const Color(0xff224a28),//80%
    800: const Color(0xff1e4023),//90%
    900: const Color(0xff1a371e),//100%
  };

  // Alt colors to test out
  // static const colorPrimary1 = Color(0xffa20000); //RGB(220,36,40)
  // static const colorPrimaryDark = Color(0xff6d0000);
  // static const colorAccent = Color(0xffdb452b);


  //static Color colorPrimary = Colors.black;

  static Color white = Colors.white;
  static Color orange = Colors.orange[700]!;
  static Color red = Colors.red[700]!;
  static Color red50 = Colors.red[50]!;

  static Color transparent = Colors.transparent;
  static Color black = Colors.black;
  static Color green = Colors.green;
  static Color green50 = Colors.green[50]!;

  static Color purple = Colors.purple;
  static Color blue = Colors.blue;

  static Color textFieldTextColor = Colors.black;

  static Color grey200 = Colors.grey[200]!;




}