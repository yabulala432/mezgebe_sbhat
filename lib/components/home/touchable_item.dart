import 'package:mezgebe_sbhat/components/home/separator.dart';
import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class TouchableItem extends StatelessWidget {
  // double _opacity = 1.0;
  final String imageUrl;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const TouchableItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  void _handleTap() {
    onTap();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => _handleTap(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                  child: Image.asset(
                    imageUrl,
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Provider.of<ThemeProvider>(context)
                                .themeData
                                .colorScheme
                                .primary,
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        subtitle,
                        softWrap: true,
                        style: TextStyle(
                          color: Provider.of<ThemeProvider>(context)
                              .themeData
                              .colorScheme
                              .secondary,
                          fontSize: 15.0,
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
          color:
              Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
          height: 0.0,
          thickness: 1.0,
          indent: 10.0,
          endEndent: 10,
          padding: const EdgeInsets.symmetric(vertical: 8.0),
        )
      ],
    );
  }
}
