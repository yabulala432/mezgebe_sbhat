// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mezgebe_sbhat/components/about/app_tile.dart';
import 'package:mezgebe_sbhat/components/home/background_color.dart';
import 'package:getwidget/getwidget.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundColor(
      color:
          Provider.of<ThemeProvider>(context).themeData.colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Provider.of<ThemeProvider>(context)
                    .themeData
                    .colorScheme
                    .primary,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 250,
              width: double.infinity,
              child: Expanded(
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/adaptive-icon.png')),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Mezgebe Sbhat",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Provider.of<ThemeProvider>(context)
                                    .themeData
                                    .colorScheme
                                    .inversePrimary,
                              ),
                            ),
                            Text(
                              "Inspired by Qale Sbhat Version 1.0.0",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Provider.of<ThemeProvider>(context)
                                    .themeData
                                    .colorScheme
                                    .inversePrimary,
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Collaborators',
                style: TextStyle(
                  color: Provider.of<ThemeProvider>(context)
                      .themeData
                      .colorScheme
                      .primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            AppTile(
              image: NetworkImage(
                  'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp'),
              name: 'Yeabsira Yonas',
              title: 'Software Engineer',
              description: 'App Developer and Maintainer',
            ),
            SizedBox(
              height: 15,
            ),
            AppTile(
              image: NetworkImage(
                  'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp'),
              name: "Solomon Belay",
              title: "Software Engineer",
              description: "Logo Designer",
            ),
            SizedBox(
              height: 15,
            ),
            AppTile(
              image: NetworkImage(
                  'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp'),
              name: "Yihun Shekuri (D/N)",
              title: "Software Engineer",
              description: "App Name and Modification Ideas",
            ),
            SizedBox(
              height: 15,
            ),
            AppTile(
              image: NetworkImage(
                  'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp'),
              name: "Yihune Zewdie (D/N)",
              title: "Software Engineer",
              description: "Some Modification Ideas",
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GFButton(
                    onPressed: () {},
                    text: ("About the App"),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Provider.of<ThemeProvider>(context)
                          .themeData
                          .colorScheme
                          .background,
                    ),
                    shape: GFButtonShape.pills,
                    color: Provider.of<ThemeProvider>(context)
                        .themeData
                        .colorScheme
                        .primary,
                    size: 60,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GFButton(
                    onPressed: () {},
                    text: "About the Developer",
                    shape: GFButtonShape.pills,
                    color: Provider.of<ThemeProvider>(context)
                        .themeData
                        .colorScheme
                        .primary,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Provider.of<ThemeProvider>(context)
                          .themeData
                          .colorScheme
                          .background,
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
