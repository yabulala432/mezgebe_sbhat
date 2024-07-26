import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/player/neumorphic_container.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class RepeatButton extends StatelessWidget {
  final bool repeatOnce;
  const RepeatButton({super.key, required this.repeatOnce});

  @override
  Widget build(BuildContext context) {
    return NeumorphicContainer(
      color: Provider.of<PlayListProvider>(context).playNext && !repeatOnce
          ? Provider.of<ThemeProvider>(context).themeData.colorScheme.primary
          : Provider.of<PlayListProvider>(context).loopAudio && repeatOnce
              ? Provider.of<ThemeProvider>(context)
                  .themeData
                  .colorScheme
                  .primary
              : Provider.of<ThemeProvider>(context)
                  .themeData
                  .colorScheme
                  .surface,
      child: IconButton(
        onPressed: () {
          if (repeatOnce) {
            Provider.of<PlayListProvider>(context, listen: false).toggleLoop();
          } else {
            Provider.of<PlayListProvider>(context, listen: false)
                .togglePlayNext();
          }
        },
        icon: Icon(
          repeatOnce ? Icons.repeat_one : Icons.repeat,
          size: 30.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
