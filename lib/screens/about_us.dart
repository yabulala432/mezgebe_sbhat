import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:mezgebe_sbhat/components/about/app_tile.dart';
import 'package:mezgebe_sbhat/components/home/background_color.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/screens/about_app.dart';
import 'package:mezgebe_sbhat/screens/about_developer.dart';
import 'package:provider/provider.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme themeProvider =
        Provider.of<ThemeProvider>(context).themeData.colorScheme;
    return BackgroundColor(
      color: themeProvider.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: themeProvider.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 250,
              width: double.infinity,
              child: Expanded(
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/adaptive-icon.png'),
                      width: 200,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "መዝገበ ስብሐት",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: themeProvider.inversePrimary,
                              ),
                            ),
                            Text(
                              "Version 1.0.0 \nInspired by ቃለ ስብሐት",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: themeProvider.inversePrimary,
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Collaborators',
                style: TextStyle(
                  color: themeProvider.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const AppTile(
              image: AssetImage('assets/images/yeabsira.jpg'),
              name: 'የአብሥራ ዮናስ',
              title: 'Software Engineer',
              description: 'App Developer and Maintainer',
              telegramHandle: 'fkureyohanns',
              website: 'https://portfolio-yeabsra.vercel.app/',
              email: 'yabulala432@gmail.com',
            ),
            const SizedBox(
              height: 15,
            ),
            const AppTile(
              image: AssetImage('assets/images/yihunImage.jpg'),
              name: "ዲ/ን ይሁን ሽኩሪ",
              title: "Software Engineer",
              description: "App Name and Developer",
              telegramHandle: 'sholet1234',
              website: '',
              email: '',
            ),
            const SizedBox(
              height: 15,
            ),
            const AppTile(
              image: AssetImage('assets/images/solomonImage.jpeg'),
              name: "ሶሎሞን በላይ",
              title: "Software Engineer",
              description: "Logo Designer",
              telegramHandle: 'Solo_mo_on',
              website: '',
              email: '',
            ),
            const SizedBox(
              height: 15,
            ),
            const AppTile(
              image: AssetImage('assets/images/tempYihune.jpeg'),
              name: "ይሁኔ ዘውዴ",
              title: "Software Engineer",
              description: "Modification Ideas",
              telegramHandle: 'Atie_Mb21',
              website: '',
              email: '',
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GFButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => const AboutApp(),
                        ),
                      );
                    },
                    text: ("About the App"),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: themeProvider.surface,
                    ),
                    shape: GFButtonShape.pills,
                    color: themeProvider.primary,
                    size: 60,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GFButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => const AboutDeveloper(),
                        ),
                      );
                    },
                    text: "About the Developer",
                    shape: GFButtonShape.pills,
                    color: themeProvider.primary,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: themeProvider.surface,
                    ),
                    size: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
