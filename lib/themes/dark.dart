import 'package:flutter/material.dart';

ThemeData dark = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: const Color(0xff212832),
    primary: const Color(0xffee631e),
    secondary: const Color(0xffee631e),
    inversePrimary: const Color(0xff212832),
    error: const Color.fromARGB(255, 125, 48, 48),
    onPrimary: Colors.white,
    shadow: const Color(0xffee631e).withOpacity(.3),
  ),
);
