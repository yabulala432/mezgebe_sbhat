// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});
// sbhat =  hameru ha = ሐመሩ
  @override
  Widget build(BuildContext context) {
    final ColorScheme themeProvider =
        Provider.of<ThemeProvider>(context).themeData.colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ስለ መዝገበ ስብሐት',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: themeProvider.primary,
          ),
        ),
        centerTitle: true,
        backgroundColor: themeProvider.surface,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: themeProvider.primary,
        ),
      ),
      body: Material(
        color: themeProvider.surface,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: ListView(
            children: [
              Image(
                image: AssetImage('assets/images/adaptive-icon.png'),
                height: 400,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FaIcon(FontAwesomeIcons.church).icon,
                      size: 50,
                      color: themeProvider.primary,
                    ),
                    SizedBox(width: 30),
                    Flexible(
                      child: Text(
                        'ይህ አፕሊኬሽን የተዘጋጀው የኢትዮጵያ ኦርቶዶክስ ተዋሕዶ ቤተ ክርስቲያንን ዜማ ለመማር ለሚፈልጉ ተማሪዎች ነው። በውስጡ ሦስት ዓይነት ዜማዎች አሉት። \n፩. ቅዳሴ   ፪. ምስባክ   ፫. ኪዳን',
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: themeProvider.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Divider(
                thickness: 3.0,
                height: 20.0,
                color: themeProvider.primary,
                indent: 40.0,
                endIndent: 40.0,
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FaIcon(FontAwesomeIcons.cross).icon,
                          size: 35,
                          color: themeProvider.primary,
                        ),
                        SizedBox(width: 30),
                        Flexible(
                          child: Text(
                            // msgana(thanks) =
                            'ምስጋና',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: themeProvider.primary,
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        Icon(
                          FaIcon(FontAwesomeIcons.cross).icon,
                          size: 35,
                          color: themeProvider.primary,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      "ለእግዚአብሔር",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: themeProvider.primary,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Divider(
                thickness: 3.0,
                height: 20.0,
                color: themeProvider.primary,
                indent: 40.0,
                endIndent: 40.0,
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FaIcon(FontAwesomeIcons.solidBookmark).icon,
                        size: 35,
                        color: themeProvider.primary,
                      ),
                      SizedBox(width: 30),
                      Flexible(
                        child: Text(
                          'መታሰቢያነቱ',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: themeProvider.primary,
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      Icon(
                        FaIcon(FontAwesomeIcons.solidBookmark).icon,
                        size: 35,
                        color: themeProvider.primary,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "ለኢትዮጵያ ኦርቶዶክስ ተዋሕዶ ቤተ ክርስቲያን አገልጋይ ካህናት በሙሉ ::",
                      // ye yu yi ya ye y yo = የዩአይያየዮ
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: themeProvider.primary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
