import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:mezgebe_sbhat/screens/list_screen.dart';
import 'package:mezgebe_sbhat/screens/player_screen.dart';
import 'package:provider/provider.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  final List<Widget> _screens = [ListScreen(), const PlayerScreen()];

  @override
  Widget build(BuildContext context) {
    final BottomNavState bottomNavState = Provider.of<BottomNavState>(context);

    return Scaffold(
      body: IndexedStack(
        index: bottomNavState.currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Provider.of<ThemeProvider>(context)
                  .themeData
                  .colorScheme
                  .onPrimary
                  .withOpacity(0.5),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: bottomNavState.currentIndex,
          onTap: (int index) {
            bottomNavState.currentIndex = index;
          },
          backgroundColor: Provider.of<ThemeProvider>(context)
              .themeData
              .colorScheme
              .background,
          fixedColor:
              Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
          unselectedItemColor: Provider.of<ThemeProvider>(context)
              .themeData
              .colorScheme
              .onPrimary,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.church), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined), label: 'Player'),
          ],
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   // Provider.of<PlayListProvider>(context, listen: false).dispose();
  // }
}
