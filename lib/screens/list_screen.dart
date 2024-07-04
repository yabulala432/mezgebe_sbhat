import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/home/separator.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
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
