import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/home/background_color.dart';
import 'package:mezgebe_sbhat/components/home/touchable_item.dart';
import 'package:mezgebe_sbhat/data/menu.dart';
import 'package:mezgebe_sbhat/providers/bottom_nav_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundColor(
      color:
          Provider.of<ThemeProvider>(context).themeData.colorScheme.background,
      child: ListView.builder(
        itemCount: Menu.items.length,
        itemBuilder: (context, index) {
          final item = Menu.items[index];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TouchableItem(
                  imageUrl: item["imageUrl"]!,
                  title: item["title"]!,
                  subtitle: item['subTitle']!,
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            const BottomNavApp(),
                        transitionDuration: const Duration(seconds: 0),
                        reverseTransitionDuration: const Duration(seconds: 0),
                      ),

                      //   MaterialPageRoute(
                      // builder: (context) => GeminiApp(),
                      // )
                    );
                    // ignore: avoid_print
                    print("Tapped on $index");
                  },
                ),
              ),
              // const Separator(),
            ],
          );
        },
      ),
    );
  }
}
