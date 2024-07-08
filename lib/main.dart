import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/screens/drawer_navigator.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MaterialApp(
        home: DrawerScreen(
          title: "መዝገበ ስብሐት",
        ),
      ),
    ),
  );
}
