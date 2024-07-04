import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/player/app_slider.dart';
import 'package:mezgebe_sbhat/components/player/flip_card.dart';
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
                        .onPrimary,
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
        // just a placeholder for the back button
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
                            "00:00",
                            style: TextStyle(
                              color: Provider.of<ThemeProvider>(context)
                                  .themeData
                                  .colorScheme
                                  .onPrimary,
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: AppSlider(),
                          ),
                          Text(
                            "10:52",
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
                            onPressed: () {},
                            icon: Icon(
                              Icons.repeat,
                              size: 30.0,
                              color: Provider.of<ThemeProvider>(context)
                                  .themeData
                                  .colorScheme
                                  .onPrimary,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
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
                            onPressed: () {},
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
                                  Icons.play_arrow,
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
                            onPressed: () {},
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
                            onPressed: () {},
                            icon: Icon(
                              Icons.repeat_one,
                              size: 30.0,
                              color: Provider.of<ThemeProvider>(context)
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
