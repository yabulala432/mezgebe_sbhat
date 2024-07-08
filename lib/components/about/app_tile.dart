// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class AppTile extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String title;
  final String description;

  const AppTile({
    super.key,
    required this.image,
    required this.name,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 120,
        maxHeight: 150,
        maxWidth: 500,
      ),
      decoration: BoxDecoration(
        color:
            Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: image,
            height: double.infinity,
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                    color: Provider.of<ThemeProvider>(context)
                        .themeData
                        .colorScheme
                        .background,
                  ),
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 13,
                  ),
                ),
                Flexible(
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Provider.of<ThemeProvider>(context)
                            .themeData
                            .colorScheme
                            .background,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.telegram,
                        size: 30.0,
                        color: Provider.of<ThemeProvider>(context)
                            .themeData
                            .colorScheme
                            .background,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Provider.of<ThemeProvider>(context)
                            .themeData
                            .colorScheme
                            .background,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.laptop,
                        size: 30.0,
                        color: Provider.of<ThemeProvider>(context)
                            .themeData
                            .colorScheme
                            .background,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Provider.of<ThemeProvider>(context)
                            .themeData
                            .colorScheme
                            .background,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.web,
                        size: 30.0,
                        color: Provider.of<ThemeProvider>(context)
                            .themeData
                            .colorScheme
                            .background,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
