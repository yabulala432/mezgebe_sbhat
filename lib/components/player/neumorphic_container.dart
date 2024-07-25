import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class NeumorphicContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  const NeumorphicContainer({
    super.key,
    required this.child,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color:
              Provider.of<ThemeProvider>(context).themeData.colorScheme.surface,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(40.0),
        boxShadow: [
          // Soft shadow on top-left
          BoxShadow(
            color: const Color.fromARGB(255, 246, 246, 246).withOpacity(0.2),
            offset: const Offset(-10, -10),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0)
                .withOpacity(0.2), // Dark shadow color
            offset: const Offset(10, 10),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: child,
    );
  }
}
