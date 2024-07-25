import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/models/song.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_app.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:mezgebe_sbhat/services/file_service.dart';
import 'package:provider/provider.dart';

class BottomNavApp extends StatelessWidget {
  final List<Song> menu;
  const BottomNavApp({super.key, required this.menu});

  // final KdaseMenu kdaseMenu = KdaseMenu();

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
            // fileservice is in the top level provider
            fileService: Provider.of<FileService>(context, listen: false),
          ),
        ),
      ],
      child: const BottomNavigator(),
    );
  }
}
