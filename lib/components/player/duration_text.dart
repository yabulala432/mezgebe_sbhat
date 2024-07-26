import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class DurationText extends StatelessWidget {
  final bool isLeft;
  const DurationText({super.key, required this.isLeft});

  @override
  Widget build(BuildContext context) {
    if (isLeft) {
      return Text(
        Provider.of<PlayListProvider>(context).currentDurationString,
        style: TextStyle(
          color: Provider.of<ThemeProvider>(context)
              .themeData
              .colorScheme
              .onPrimary,
        ),
      );
    } else {
      return Text(
        Provider.of<PlayListProvider>(context).totalDurationString,
        style: TextStyle(
          color: Provider.of<ThemeProvider>(context)
              .themeData
              .colorScheme
              .onPrimary,
        ),
      );
    }
  }
}
