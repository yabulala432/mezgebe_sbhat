import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Provider.of<PlayListProvider>(context)
          .playListParent.playList[Provider.of<PlayListProvider>(context).currentIndex]
          .title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color:
            Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
        fontSize: 23.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
