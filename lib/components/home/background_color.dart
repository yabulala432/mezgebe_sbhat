import 'package:flutter/material.dart';

class BackgroundColor extends StatelessWidget {
  final Widget child;
  final Color color;

  const BackgroundColor({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      // #212832 = 33, 40, 50
      color: color,
      child: child,
    );
  }
}
