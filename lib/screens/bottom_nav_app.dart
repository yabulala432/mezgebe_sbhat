// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:mezgebe_sbhat/components/home/separator.dart';
import 'package:mezgebe_sbhat/components/player/app_slider.dart';
import 'package:mezgebe_sbhat/components/player/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> data = [
      "01. እምነ በሐ",
      "02. መስቀል አብርሃ",
      "03. ኦ ሥሉስ_ቅዱስ",
    ];
    return Scaffold(
      backgroundColor:
          Provider.of<ThemeProvider>(context).themeData.colorScheme.background,
      appBar: AppBar(
        backgroundColor:
            Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
        title: Text(
          "መዝገበ ስብሐት",
          style: TextStyle(
            color: Provider.of<ThemeProvider>(context)
                .themeData
                .colorScheme
                .onPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Provider.of<ThemeProvider>(context)
                  .themeData
                  .colorScheme
                  .onPrimary,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () =>
                      Provider.of<BottomNavState>(context, listen: false)
                          .navigateToScreen2(
                    {"title": data[index]},
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage("assets/listImage.jpg"),
                        ),
                        const SizedBox(width: 20.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data[index],
                                style: TextStyle(
                                  color: Provider.of<ThemeProvider>(context)
                                      .themeData
                                      .colorScheme
                                      .primary,
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Separator(
                  color: Provider.of<ThemeProvider>(context)
                      .themeData
                      .colorScheme
                      .primary,
                  indent: 65,
                  height: 0,
                )
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<BottomNavState>(context, listen: false).navigateToScreen2(
            {"title": "From FAB"},
          );
        },
        backgroundColor:
            Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(26.0),
          ),
        ),
        child: Icon(
          Icons.play_arrow,
          color: Provider.of<ThemeProvider>(context)
              .themeData
              .colorScheme
              .onPrimary,
          size: 50.0,
        ),
      ),
    );
  }
}

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
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: FlipCardContainer(),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 30.0, left: 16.0, right: 16.0),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
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
                          Expanded(
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
                      SizedBox(height: 20.0),
                      Row(
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// State Management (Provider)
class BottomNavState with ChangeNotifier {
  int _currentIndex = 0;
  Map<String, dynamic> _params = {}; // New property to hold parameters

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners(); // Notify listeners of the change
  }

  Map<String, dynamic> get params => _params;

  void navigateToScreen2(Map<String, dynamic> params) {
    currentIndex = 1;
    _params = params; // Set the parameters
    notifyListeners();
  }
}

class BottomNavApp extends StatelessWidget {
  const BottomNavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavState>(
      create: (context) => BottomNavState(),
      child: const BottomNavigator(),
    );
  }
}

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  final List<Widget> _screens = const [ListScreen(), PlayerScreen()];

  @override
  Widget build(BuildContext context) {
    final BottomNavState bottomNavState = Provider.of<BottomNavState>(context);

    return Scaffold(
      body: _screens[bottomNavState.currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Provider.of<ThemeProvider>(context)
                  .themeData
                  .colorScheme
                  .onPrimary
                  .withOpacity(0.5),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: bottomNavState.currentIndex,
          onTap: (int index) {
            bottomNavState.currentIndex = index;
          },
          backgroundColor: Provider.of<ThemeProvider>(context)
              .themeData
              .colorScheme
              .background,
          // selectedItemColor: Color(0xffffffff),
          fixedColor:
              Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
          unselectedItemColor: Provider.of<ThemeProvider>(context)
              .themeData
              .colorScheme
              .onPrimary,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.church), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined), label: 'Player'),
          ],
        ),
      ),
    );
  }
}
