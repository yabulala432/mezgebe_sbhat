import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mezgebe_sbhat/components/player/neumorphic_container.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/services/file_service.dart';
import 'package:provider/provider.dart';

class PlayPauseDownloadProgress extends StatelessWidget {
  const PlayPauseDownloadProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlayListProvider>(
      builder: (context, playListProvider, child) {
        try {
          return playListProvider.isDownloading && !playListProvider.isPlaying
              ? SizedBox(
                  height: 80,
                  width: 80,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Consumer<FileService>(
                          builder: (context, FileService fileService, child) {
                        return CircularProgressIndicator(
                          value: fileService.getDownloadProgress(
                              fileId: playListProvider
                                  .playListParent
                                  .playList[playListProvider.currentIndex]
                                  .audioUrl),
                          color: Provider.of<ThemeProvider>(context)
                              .themeData
                              .colorScheme
                              .primary,
                          backgroundColor: Colors.white,
                        );
                      })
                      /* CircularProgressIndicator(
                      value: Provider.of<FileService>(context, listen: false)
                          .getDownloadProgress(
                              fileId: playListProvider
                                  .playList[playListProvider.currentIndex]
                                  .audioUrl),
                      color: Provider.of<ThemeProvider>(context)
                          .themeData
                          .colorScheme
                          .primary,
                    ),*/
                      ),
                )
              : playListProvider.downloadError && !playListProvider.isPlaying
                  ? IconButton(
                      onPressed: () {
                        try {
                          Provider.of<PlayListProvider>(context, listen: false)
                              .playPause();
                        } finally {}
                      },
                      icon: NeumorphicContainer(
                        color: Provider.of<ThemeProvider>(context)
                            .themeData
                            .colorScheme
                            .surface,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Icon(
                            FontAwesomeIcons.download,
                            color: Provider.of<ThemeProvider>(context)
                                .themeData
                                .colorScheme
                                .onPrimary,
                            size: 35.0,
                          ),
                        ),
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        try {
                          Provider.of<PlayListProvider>(context, listen: false)
                              .playPause();
                        } finally {}
                      },
                      icon: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Provider.of<ThemeProvider>(context)
                              .themeData
                              .colorScheme
                              .primary,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            playListProvider.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Provider.of<ThemeProvider>(context)
                                .themeData
                                .colorScheme
                                .onPrimary,
                            size: 60.0,
                          ),
                        ),
                      ),
                    );
        } catch (e) {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
