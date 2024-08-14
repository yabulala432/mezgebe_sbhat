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
    final ColorScheme themeProvider =
        Provider.of<ThemeProvider>(context).themeData.colorScheme;
    final bottomNavState = Provider.of<BottomNavState>(context, listen: false);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        bottomNavState.navigateToScreen1();
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
          backgroundColor: themeProvider.surface,
          leading: IconButton(
            onPressed: () {
              bottomNavState.currentIndex = 0;
            },
            icon: Icon(
              Icons.arrow_back,
              color: themeProvider.onPrimary,
              size: 30.0,
            ),
          ),
        ),
        backgroundColor: themeProvider.surface,
        body: Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: PdfCard(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 15.0, left: 16.0, right: 16.0),
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
