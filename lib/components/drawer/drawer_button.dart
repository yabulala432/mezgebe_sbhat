import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class AppDrawerButton extends StatelessWidget {
  final bool isSelected;
  final void Function() onItemTapped;
  final String title;
  final IconData leadingIcon;

  const AppDrawerButton({
    super.key,
    required this.isSelected,
    required this.onItemTapped,
    required this.title,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color:
              Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
        ),
      ),
      selected: isSelected,
      onTap: onItemTapped,
      selectedTileColor:
          Provider.of<ThemeProvider>(context).themeData.colorScheme.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      leading: Icon(
        leadingIcon,
        color:
            Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
      ),
    );
  }
}
