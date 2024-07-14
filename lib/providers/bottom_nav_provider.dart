import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_app.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:provider/provider.dart';

import 'package:mezgebe_sbhat/data/kdase_menu.dart';

class BottomNavApp extends StatelessWidget {
  BottomNavApp({super.key});

  final KdaseMenu kdaseMenu = KdaseMenu();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<BottomNavState>(
        create: (_) => BottomNavState(),
      ),
      ChangeNotifierProvider(
        create: (_) => PlayListProvider(
          playList: kdaseMenu.playList,
        ),
      )
    ], child: const BottomNavigator());
  }
}
