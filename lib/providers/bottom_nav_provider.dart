import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/models/menu_list_parent.dart';
import 'package:mezgebe_sbhat/providers/pdf_url_provider.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_app.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:mezgebe_sbhat/services/file_service.dart';
import 'package:provider/provider.dart';

class BottomNavApp extends StatelessWidget {
  final PlayListParent menuClass;
  final String title;
  const BottomNavApp({super.key, required this.menuClass, required this.title});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavState>(
          create: (_) => BottomNavState(),
        ),
        ChangeNotifierProvider(
          create: (_) => PlayListProvider(
            playListParent: menuClass,
            fileService: Provider.of<FileService>(context, listen: false),
          ),
        ),
        ChangeNotifierProvider(
          create: (_) => PdfUrlProvider(filePdf: menuClass.pdf),
        ),
      ],
      child: BottomNavigator(title: title),
    );
  }
}
