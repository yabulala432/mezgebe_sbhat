import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/home/separator.dart';
import 'package:mezgebe_sbhat/components/list/list_item.dart';
import 'package:mezgebe_sbhat/providers/pdf_url_provider.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreen();
}

class _ListScreen extends State<ListScreen> with AutomaticKeepAliveClientMixin {
  bool isDownloading = false;

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);

    PlayListProvider playListProvider =
        Provider.of<PlayListProvider>(context, listen: false);
    super.build(context);

    final lists = Provider.of<PlayListProvider>(context, listen: false)
        .playListParent
        .playList;
    return Material(
      child: Scaffold(
        backgroundColor: themeProvider.themeData.colorScheme.surface,
        appBar: AppBar(
          backgroundColor: themeProvider.themeData.colorScheme.primary,
          title: Text(
            "መዝገበ ስብሐት",
            style: TextStyle(
              color: themeProvider.themeData.colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: themeProvider.themeData.colorScheme.onPrimary,
                size: 30.0,
              ),
              onPressed: () {
                playListProvider.stop();
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: lists.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListItem(
                    folderName: playListProvider.playListParent.folderName,
                    title: lists[index].title,
                    url: lists[index].audioUrl,
                    disabled: isDownloading,
                    onPressed: () {
                      Provider.of<BottomNavState>(context, listen: false)
                          .navigateToScreen2();
                      playListProvider.playIndex(index);
                      if (lists[index].pageNumber != null) {
                        Provider.of<PdfUrlProvider>(context, listen: false)
                            .setPageNumber(lists[index].pageNumber!);
                      }
                    },
                  ),
                  Separator(
                    color: themeProvider.themeData.colorScheme.primary,
                    indent: 65,
                    height: 0,
                  )
                ],
              );
            }),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
