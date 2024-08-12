// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutDeveloper extends StatelessWidget {
  const AboutDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme themeProvider =
        Provider.of<ThemeProvider>(context).themeData.colorScheme;
    return Scaffold(
      body: Material(
        color: themeProvider.surface,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(230),
                topRight: Radius.circular(180),
              ),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/me.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  constraints: const BoxConstraints(
                    maxHeight: 450.0,
                    maxWidth: 600,
                  ),
                  height: 420,
                  width: double.infinity,
                  alignment: Alignment.bottomRight,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0.0,
                        left: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back, size: 30),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: themeProvider.onPrimary,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                            ),
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'የአብሥራ ዮናስ',
                              style: TextStyle(
                                color: themeProvider.primary,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 50,
                    color: themeProvider.primary,
                  ),
                  const SizedBox(width: 30),
                  Flexible(
                    child: Text(
                      'በአዲስ አበባ ሳይንስና ቴክኖሎጂ ዩኒቨርሲቲ የ5ኛ ዓመት የሶፍትዌር ምህንድስና ተማሪ እና የሶፍትዌር መሀንዲስ',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Provider.of<ThemeProvider>(context)
                            .themeData
                            .colorScheme
                            .primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Divider(
              thickness: 3.0,
              height: 20.0,
              color: Provider.of<ThemeProvider>(context)
                  .themeData
                  .colorScheme
                  .primary,
              indent: 40.0,
              endIndent: 40.0,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.people_sharp,
                  size: 50,
                  color: Provider.of<ThemeProvider>(context)
                      .themeData
                      .colorScheme
                      .primary,
                ),
                const SizedBox(width: 10),
                Text(
                  'ማህበራዊ ሚዲያዎች',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: themeProvider.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Provider.of<ThemeProvider>(context)
                          .themeData
                          .colorScheme
                          .primary,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () async {
                      final telegramAppUri =
                          Uri.parse('tg://resolve?domain=fkureyohanns');
                      final telegramWebUri =
                          Uri.parse('https://t.me/fkureyohanns');
                      try {
                        await _launchURL(telegramAppUri, telegramWebUri);
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('አልተሳካምም'),
                          ),
                        );
                      }
                    },
                    icon: const FaIcon(FontAwesomeIcons.telegram),
                    iconSize: 35,
                    color: themeProvider.primary,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Provider.of<ThemeProvider>(context)
                          .themeData
                          .colorScheme
                          .primary,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () async {
                      final linkedInUri = Uri.parse(
                          'https://www.linkedin.com/in/yeabsira-yonas/');
                      final linkedInAppUri =
                          Uri.parse('linkedin://profile/yeabsira-yonas');
                      try {
                        await _launchURL(linkedInAppUri, linkedInUri);
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('አልተሳካምም'),
                          ),
                        );
                      }
                    },
                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                    iconSize: 35,
                    color: themeProvider.primary,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Provider.of<ThemeProvider>(context)
                          .themeData
                          .colorScheme
                          .primary,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () async {
                      final twitterUri =
                          Uri.parse('https://x.com/yeabsirayo77059');
                      final twitterAppUri =
                          Uri.parse('twitter://yeabsirayo77059');
                      try {
                        await _launchURL(twitterAppUri, twitterUri);
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('አልተሳካምም'),
                          ),
                        );
                      }
                    },
                    icon: const FaIcon(FontAwesomeIcons.twitter),
                    iconSize: 35,
                    color: themeProvider.primary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(Uri baseUri, Uri fallbackUri) async {
    if (await canLaunchUrl(baseUri)) {
      await launchUrl(baseUri);
    } else if (await canLaunchUrl(fallbackUri)) {
      await launchUrl(fallbackUri);
    } else {
      throw 'Could not launch $baseUri';
    }
  }
}
