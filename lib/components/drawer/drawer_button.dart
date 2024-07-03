import 'package:flutter/material.dart';

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
        style: const TextStyle(
          color: Color(0xFFEE631E),
        ),
      ),
      selected: isSelected,
      onTap: onItemTapped,
      selectedTileColor: const Color(0xFF3f312e),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      leading: Icon(
        leadingIcon,
        color: const Color(0xFFEE631E),
      ),
    );
  }
}
