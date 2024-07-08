import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_app.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:provider/provider.dart';

class BottomNavApp extends StatelessWidget {
  const BottomNavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<BottomNavState>(
        create: (_) => BottomNavState(),
      ),
      ChangeNotifierProvider(create: (_) => PlayListProvider())
    ], child: const BottomNavigator());
  }
}
