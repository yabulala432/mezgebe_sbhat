import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:mezgebe_sbhat/screens/list_screen.dart';
import 'package:mezgebe_sbhat/screens/player_screen.dart';
import 'package:provider/provider.dart';

class BottomNavigator extends StatefulWidget {
  final String title;
  const BottomNavigator({super.key, required this.title});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  final List<Widget> _screens = [
    const ListScreen(),
    const PlayerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final BottomNavState bottomNavState = Provider.of<BottomNavState>(context);
    final ColorScheme themeProvider =
        Provider.of<ThemeProvider>(context).themeData.colorScheme;

    return Scaffold(
      body: IndexedStack(
        index: bottomNavState.currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: themeProvider.primary.withOpacity(0.5),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: bottomNavState.currentIndex,
          onTap: (int index) {
            bottomNavState.currentIndex = index;
          },
          backgroundColor: themeProvider.primary,
          // fixedColor: themeProvider.surface,
          unselectedItemColor: themeProvider.surface,
          selectedItemColor: themeProvider.onPrimary,
          items: [
            BottomNavigationBarItem(
              icon: const FaIcon(FontAwesomeIcons.church),
              label: widget.title,
            ),
            const BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.play),
              label: 'ዜማ',
            ),
          ],
        ),
      ),
    );
  }
}
