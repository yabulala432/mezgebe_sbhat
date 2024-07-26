import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/player/neumorphic_container.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class NextPreviousButton extends StatelessWidget {
  final bool next;
  const NextPreviousButton({super.key, required this.next});

  @override
  Widget build(BuildContext context) {
    return NeumorphicContainer(
      color: Provider.of<ThemeProvider>(context).themeData.colorScheme.surface,
      child: IconButton(
        onPressed: () {
          try {
            next
                ? Provider.of<PlayListProvider>(context, listen: false).next()
                : Provider.of<PlayListProvider>(context, listen: false)
                    .previous();
          } /*catch (e) {}*/ finally {}
        },
        icon: Icon(
          next ? Icons.skip_next : Icons.skip_previous,
          color: Provider.of<ThemeProvider>(context)
              .themeData
              .colorScheme
              .onPrimary,
          size: 30.0,
        ),
      ),
    );
  }
}
