import 'package:mezgebe_sbhat/components/drawer/drawer_button.dart';
import 'package:mezgebe_sbhat/screens/about_us.dart';

import 'package:mezgebe_sbhat/screens/home_screen.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key, required this.title});

  final String title;

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const AboutUs(),
    const Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFEE631E),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF212832),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFEE631E),
              ),
              child: Text('Drawer Header'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                children: [
                  AppDrawerButton(
                    title: 'መዝገበ ስብሐት',
                    isSelected: _selectedIndex == 0,
                    leadingIcon: Icons.home,
                    onItemTapped: () {
                      _onItemTapped(0);
                      Navigator.pop(context);
                    },
                  ),
                  AppDrawerButton(
                    title: 'Settings',
                    isSelected: _selectedIndex == 2,
                    leadingIcon: Icons.settings,
                    onItemTapped: () {
                      _onItemTapped(2);
                      Navigator.pop(context);
                    },
                  ),
                  AppDrawerButton(
                    title: 'About Us',
                    isSelected: _selectedIndex == 1,
                    leadingIcon: Icons.info,
                    onItemTapped: () {
                      _onItemTapped(1);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
