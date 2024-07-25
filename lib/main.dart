import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/screens/drawer_navigator.dart';
import 'package:mezgebe_sbhat/services/file_service.dart';
// import 'package:path/path.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => FileService(),
      )
    ],
    child: const MaterialApp(
      home: DrawerScreen(
        title: "መዝገበ ስብሐት",
      ),
    ),
  ));
}
