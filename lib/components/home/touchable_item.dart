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

  @override
  Widget build(BuildContext context) {
    final ColorScheme themeProvider =
        Provider.of<ThemeProvider>(context).themeData.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        color: themeProvider.surface,
        elevation: 25.0,
        child: InkWell(
          splashColor: themeProvider.primary.withOpacity(.5),
          hoverColor: themeProvider.primary.withOpacity(.5),
          focusColor: themeProvider.primary.withOpacity(.5),
          highlightColor: themeProvider.primary.withOpacity(.5),
          onTap: () => onTap(),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                child: Image.asset(
                  imageUrl,
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.fill,
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
                          color: themeProvider.primary,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                      softWrap: true,
                      style: TextStyle(
                        color: themeProvider.secondary,
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
    );
  }
}
