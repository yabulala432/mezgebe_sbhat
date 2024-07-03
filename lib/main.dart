import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/screens/drawer_navigator.dart';

void main() async {
  runApp(
    const MaterialApp(
      title: "መዝገበ ስብሐት",
      home: DrawerScreen(
        title: "title",
      ),
    ),
  );
}
