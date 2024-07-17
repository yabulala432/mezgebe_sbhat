import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/data/kdase_menu_list.dart';
import 'package:mezgebe_sbhat/models/song.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_app.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:provider/provider.dart';

class BottomNavApp extends StatelessWidget {
  final List<Song> menu;
  BottomNavApp({super.key, required this.menu});

  final KdaseMenu kdaseMenu = KdaseMenu();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavState>(
          create: (_) => BottomNavState(),
        ),
        ChangeNotifierProvider(
          create: (_) => PlayListProvider(
            playList: menu,
          ),
        )
      ],
      child: const BottomNavigator(),
    );
  }
}
