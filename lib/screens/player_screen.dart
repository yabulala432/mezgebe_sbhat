import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/player/app_slider.dart';
import 'package:mezgebe_sbhat/components/player/flip_card.dart';
import 'package:mezgebe_sbhat/components/player/neumorphic_container.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:provider/provider.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        Provider.of<BottomNavState>(context, listen: false).navigateToScreen1();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    Provider.of<PlayListProvider>(context)
                        .playList[
                            Provider.of<PlayListProvider>(context).currentIndex]
                        .title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Provider.of<ThemeProvider>(context)
                          .themeData
                          .colorScheme
                          .primary,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Provider.of<ThemeProvider>(context)
              .themeData
              .colorScheme
              .background,
          leading: IconButton(
            onPressed: () {
              Provider.of<BottomNavState>(context, listen: false).currentIndex =
                  0;
            },
            icon: Icon(
              Icons.arrow_back,
              color: Provider.of<ThemeProvider>(context)
                  .themeData
                  .colorScheme
                  .onPrimary,
              size: 30.0,
            ),
          ),
        ),
        backgroundColor: Provider.of<ThemeProvider>(context)
            .themeData
            .colorScheme
            .background,
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 20.0),
                child: FlipCardContainer(
                  frontImagePath: Provider.of<PlayListProvider>(context)
                      .playList[
                          Provider.of<PlayListProvider>(context).currentIndex]
                      .geezImagePath,
                  backImagePath: Provider.of<PlayListProvider>(context)
                      .playList[
                          Provider.of<PlayListProvider>(context).currentIndex]
                      .amharicImagePath,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 30.0, left: 16.0, right: 16.0),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 500.0,
                        ),
                        child: Row(
                          children: [
                            Text(
                              Provider.of<PlayListProvider>(context)
                                  .currentDurationString,
                              style: TextStyle(
                                color: Provider.of<ThemeProvider>(context)
                                    .themeData
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: AppSlider(
                                onChangeStart: () {
                                  Provider.of<PlayListProvider>(context,
                                          listen: false)
                                      .pause();
                                },
                                onChanged: (double value) {
                                  final Duration duration = Duration(
                                    milliseconds: value.toInt(),
                                  );
                                  Provider.of<PlayListProvider>(context,
                                          listen: false)
                                      .seek(duration);
                                },
                                onChangeEnd: (double value) {
                                  final Duration duration = Duration(
                                    milliseconds: value.toInt(),
                                  );
                                  Provider.of<PlayListProvider>(context,
                                          listen: false)
                                      .seek(duration);
                                  Provider.of<PlayListProvider>(context,
                                          listen: false)
                                      .resume();
                                },
                                max: Provider.of<PlayListProvider>(context)
                                    .totalDuration
                                    .inMilliseconds
                                    .toDouble(),
                                value: Provider.of<PlayListProvider>(context)
                                            .currentDuration
                                            .inMilliseconds
                                            .toDouble() >
                                        Provider.of<PlayListProvider>(context)
                                            .totalDuration
                                            .inMilliseconds
                                            .toDouble()
                                    ? 0
                                    : Provider.of<PlayListProvider>(context)
                                        .currentDuration
                                        .inMilliseconds
                                        .toDouble(),
                                divisions:
                                    Provider.of<PlayListProvider>(context)
                                                .totalDuration
                                                .inMilliseconds
                                                .toInt() !=
                                            0
                                        ? Provider.of<PlayListProvider>(context)
                                            .totalDuration
                                            .inMilliseconds
                                            .toInt()
                                        : 1,
                              ),
                            ),
                            Text(
                              Provider.of<PlayListProvider>(context)
                                  .totalDurationString,
                              style: TextStyle(
                                color: Provider.of<ThemeProvider>(context)
                                    .themeData
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        height: 100,
                        constraints: const BoxConstraints(
                          maxWidth: 500.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // icon button for repeat one song only
                            NeumorphicContainer(
                              color: Provider.of<PlayListProvider>(context)
                                      .playNext
                                  ? Provider.of<ThemeProvider>(context)
                                      .themeData
                                      .colorScheme
                                      .primary
                                  : Provider.of<ThemeProvider>(context)
                                      .themeData
                                      .colorScheme
                                      .background,
                              child: IconButton(
                                onPressed: () {
                                  Provider.of<PlayListProvider>(context,
                                          listen: false)
                                      .togglePlayNext();
                                },
                                icon: const Icon(
                                  Icons.repeat,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            NeumorphicContainer(
                              color: Provider.of<ThemeProvider>(context)
                                  .themeData
                                  .colorScheme
                                  .background,
                              child: IconButton(
                                onPressed: () {
                                  Provider.of<PlayListProvider>(context,
                                          listen: false)
                                      .previous();
                                },
                                icon: Icon(
                                  Icons.skip_previous,
                                  color: Provider.of<ThemeProvider>(context)
                                      .themeData
                                      .colorScheme
                                      .onPrimary,
                                  size: 30.0,
                                ),
                              ),
                            ),
                            Consumer<PlayListProvider>(
                              builder: (context, playListProvider, child) {
                                return playListProvider.isDownloading
                                    ? SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircularProgressIndicator(
                                            color: Provider.of<ThemeProvider>(
                                                    context)
                                                .themeData
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                      )
                                    : IconButton(
                                        onPressed: () {
                                          Provider.of<PlayListProvider>(context,
                                                  listen: false)
                                              .playPause();
                                        },
                                        icon: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Provider.of<ThemeProvider>(
                                                    context)
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
                                              color: Provider.of<ThemeProvider>(
                                                      context)
                                                  .themeData
                                                  .colorScheme
                                                  .onPrimary,
                                              size: 60.0,
                                            ),
                                          ),
                                        ),
                                      );
                              },
                            ),
                            NeumorphicContainer(
                              color: Provider.of<ThemeProvider>(context)
                                  .themeData
                                  .colorScheme
                                  .background,
                              child: IconButton(
                                onPressed: () {
                                  Provider.of<PlayListProvider>(context,
                                          listen: false)
                                      .next();
                                },
                                icon: Icon(
                                  Icons.skip_next,
                                  color: Provider.of<ThemeProvider>(context)
                                      .themeData
                                      .colorScheme
                                      .onPrimary,
                                  size: 30.0,
                                ),
                              ),
                            ),
                            NeumorphicContainer(
                              color: Provider.of<PlayListProvider>(context)
                                      .loopAudio
                                  ? Provider.of<ThemeProvider>(context)
                                      .themeData
                                      .colorScheme
                                      .primary
                                  : Provider.of<ThemeProvider>(context)
                                      .themeData
                                      .colorScheme
                                      .background,
                              child: IconButton(
                                onPressed: () {
                                  Provider.of<PlayListProvider>(context,
                                          listen: false)
                                      .toggleLoop();
                                },
                                icon: const Icon(
                                  Icons.repeat_one,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
