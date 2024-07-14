import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  colorScheme: ColorScheme.light(
    background: const Color.fromARGB(255, 176, 113, 63),
    shadow: const Color.fromARGB(255, 63, 23, 3).withOpacity(.3),
    primary: const Color.fromARGB(255, 63, 23, 3),
    secondary: const Color.fromARGB(255, 79, 35, 35),
    inversePrimary: const Color.fromARGB(255, 176, 113, 63),
    onPrimary: Colors.white,
    error: const Color.fromARGB(255, 238, 30, 30),
  ),
);
