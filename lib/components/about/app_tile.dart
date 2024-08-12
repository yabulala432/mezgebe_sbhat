// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AppTile extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String title;
  final String description;
  final String telegramHandle;
  final String website;
  final String email;

  const AppTile({
    super.key,
    required this.image,
    required this.name,
    required this.title,
    required this.description,
    required this.telegramHandle,
    required this.website,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider =
        Provider.of<ThemeProvider>(context).themeData.colorScheme;
    return Container(
      constraints: const BoxConstraints(
        minHeight: 90,
        maxHeight: 110,
        maxWidth: 500,
      ),
      decoration: BoxDecoration(
        color: themeProvider.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: image,
            width: 100,
            height: 110,
            fit: BoxFit.fitHeight,
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
                        .surface,
                  ),
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 13,
                  ),
                ),
                Flexible(
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 0.0,
              runSpacing: 2.0,
              children: [
                IconButton(
                  onPressed: () async {
                    try {
                      await _launchUrl(
                        Uri.parse('tg://resolve?domain=$telegramHandle'),
                        Uri.parse('https://t.me/$telegramHandle'),
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('አልተሳካምም'),
                        ),
                      );
                    }
                  },
                  icon: Icon(
                    FontAwesomeIcons.telegram,
                    size: 30.0,
                    color: themeProvider.surface,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    try {
                      await _launchUrl(
                        // uri for email
                        Uri.parse('mailto:$email'),
                        Uri.parse('mailto:$email'),
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('አልተሳካምም'),
                        ),
                      );
                    }
                  },
                  icon: Icon(
                    FontAwesomeIcons.envelope,
                    size: 30.0,
                    color: themeProvider.surface,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    try {
                      await _launchUrl(
                        Uri.parse(website),
                        Uri.parse(website),
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('አልተሳካምም'),
                        ),
                      );
                    }
                  },
                  icon: Icon(
                    FontAwesomeIcons.globe,
                    size: 30.0,
                    color: themeProvider.surface,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> _launchUrl(Uri url, Uri fallbackUrl) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else if (await canLaunchUrl(fallbackUrl)) {
      await launchUrl(fallbackUrl);
    } else {
      throw 'Could not launch $url';
    }
  }
}
