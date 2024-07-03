import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  final Color color;
  final double height;
  final double thickness;
  final EdgeInsetsGeometry padding;
  final double indent;
  final double endEndent;

  const Separator({
    super.key,
    this.color = const Color(0xFFEE631E),
    this.height = 5.0,
    this.thickness = 1.0,
    this.indent = 10,
    this.endEndent = 10,
    this.padding = const EdgeInsets.symmetric(vertical: 8.0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Divider(
        color: color,
        height: height,
        thickness: thickness,
        indent: indent,
        endIndent: endEndent,
      ),
    );
  }
}
