import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/player/app_slider.dart';
import 'package:mezgebe_sbhat/components/player/duration_text.dart';
import 'package:mezgebe_sbhat/components/player/pdf_card.dart';
import 'package:mezgebe_sbhat/components/player/header_text.dart';
import 'package:mezgebe_sbhat/components/player/next_previous_button.dart';
import 'package:mezgebe_sbhat/components/player/play_pause_download_progress.dart';
import 'package:mezgebe_sbhat/components/player/repeat_button.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:provider/provider.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('state updating bro !');
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        print('pop Invoked');
        Provider.of<BottomNavState>(context, listen: false).navigateToScreen1();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Row(
              children: [
                Expanded(
                  child: HeaderText(),
                ),
              ],
            ),
          ),
          backgroundColor:
              Provider.of<ThemeProvider>(context).themeData.colorScheme.surface,
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
            Provider.of<ThemeProvider>(context).themeData.colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
                child: PdfCardContainer(),
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
                        child: const Row(
                          children: [
                            DurationText(isLeft: true),
                            Expanded(
                              // flex: 1,
                              child: AppSlider(),
                            ),
                            DurationText(isLeft: false),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        height: 100,
                        constraints: const BoxConstraints(
                          maxWidth: 500.0,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RepeatButton(repeatOnce: false),
                            NextPreviousButton(next: false),
                            PlayPauseDownloadProgress(),
                            NextPreviousButton(next: true),
                            RepeatButton(repeatOnce: true),
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
