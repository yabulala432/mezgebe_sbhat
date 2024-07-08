import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/player/app_slider.dart';
import 'package:mezgebe_sbhat/components/player/flip_card.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:provider/provider.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavState bottomNavState = Provider.of<BottomNavState>(context);
    final data = bottomNavState.params['title'];
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  data,
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
      backgroundColor:
          Provider.of<ThemeProvider>(context).themeData.colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: FlipCardContainer(),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 30.0, left: 16.0, right: 16.0),
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
                              onChanged: (double value) {
                                // pause the audio when sliding
                                Provider.of<PlayListProvider>(context,
                                        listen: false)
                                    .pause();
                                // set the current duration to the value of the slider
                                final Duration duration = Duration(
                                  milliseconds: value.toInt(),
                                );
                                Provider.of<PlayListProvider>(context,
                                        listen: false)
                                    .seek(duration);
                                Provider.of<PlayListProvider>(context,
                                        listen: false)
                                    .play();
                              },
                              max: Provider.of<PlayListProvider>(context)
                                  .totalDuration
                                  .inMilliseconds
                                  .toDouble(),
                              value: Provider.of<PlayListProvider>(context)
                                  .currentDuration
                                  .inMilliseconds
                                  .toDouble(),
                              divisions: Provider.of<PlayListProvider>(context)
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
                      constraints: const BoxConstraints(
                        maxWidth: 500.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // icon button for repeat one song only
                          IconButton(
                            onPressed: () {
                              Provider.of<PlayListProvider>(context,
                                      listen: false)
                                  .togglePlayNext();
                            },
                            icon: Icon(
                              Icons.repeat,
                              size: 30.0,
                              color: Provider.of<PlayListProvider>(context)
                                      .playNext
                                  ? Provider.of<ThemeProvider>(context)
                                      .themeData
                                      .colorScheme
                                      .primary
                                  : Provider.of<ThemeProvider>(context)
                                      .themeData
                                      .colorScheme
                                      .onPrimary,
                            ),
                          ),
                          IconButton(
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
                          IconButton(
                            onPressed: () {
                              Provider.of<PlayListProvider>(context,
                                      listen: false)
                                  .playPause();
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
                                  Provider.of<PlayListProvider>(context)
                                          .isPlaying
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
                          ),
                          IconButton(
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
                          IconButton(
                            onPressed: () {
                              Provider.of<PlayListProvider>(context,
                                      listen: false)
                                  .toggleLoop();
                            },
                            icon: Icon(
                              Icons.repeat_one,
                              size: 30.0,
                              color: Provider.of<PlayListProvider>(context)
                                      .loopAudio
                                  ? Provider.of<ThemeProvider>(context)
                                      .themeData
                                      .colorScheme
                                      .primary
                                  : Provider.of<ThemeProvider>(context)
                                      .themeData
                                      .colorScheme
                                      .onPrimary,
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
    );
  }
}
