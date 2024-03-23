import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStatePropertyAll(Colors.white,),
      backgroundColor: MaterialStatePropertyAll(Color(0xffF9AC68),),
    ),
  ),
  cardTheme: const CardTheme(
    color: Color(0xffF9AC68),
  ),
  scaffoldBackgroundColor: const Color(0xff302E43),
  appBarTheme: const AppBarTheme(
    // centerTitle: true,
    backgroundColor: Color(0xff302E43),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xff302E43),
    // selectedLabelStyle: TextStyle(color: Colors.white),
    selectedItemColor: Colors.white
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStatePropertyAll(Colors.white),
      textStyle: MaterialStatePropertyAll(
        TextStyle(color: Colors.white),
      ),
      backgroundColor: MaterialStatePropertyAll(
        Color(0xffF9AC68),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    ),
  ),
  outlinedButtonTheme: const OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStatePropertyAll(
        Color(0xffed6b5b),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    ),
  ),
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          decoration: TextDecoration.underline,
          color: Color(0xffed6b5b),
        ),
      ),
      foregroundColor: MaterialStatePropertyAll(
        Color(0xffed6b5b),
      ),
    ),
  ),
);
