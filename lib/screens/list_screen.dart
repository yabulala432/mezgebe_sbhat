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
    super.build(context);

    final lists = Provider.of<PlayListProvider>(context).playList;
    return Material(
      child: Scaffold(
        backgroundColor:
            Provider.of<ThemeProvider>(context).themeData.colorScheme.surface,
        appBar: AppBar(
          backgroundColor:
              Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
          title: Text(
            "መዝገበ ስብሐት",
            style: TextStyle(
              color: Provider.of<ThemeProvider>(context)
                  .themeData
                  .colorScheme
                  .onPrimary,
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
                color: Provider.of<ThemeProvider>(context)
                    .themeData
                    .colorScheme
                    .onPrimary,
                size: 30.0,
              ),
              onPressed: () {
                Provider.of<PlayListProvider>(context, listen: false).stop();
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
                    title: lists[index].title,
                    url: lists[index].audioUrl,
                    disabled: isDownloading,
                    onPressed: () {
                      Provider.of<BottomNavState>(context, listen: false)
                          .navigateToScreen2();
                      Provider.of<PlayListProvider>(context, listen: false)
                          .playIndex(index);
                      if (lists[index].pageNumber != null) {
                        Provider.of<PdfUrlProvider>(context, listen: false)
                            .setPageNumber(lists[index].pageNumber!);
                      }
                    },
                  ),
                  Separator(
                    color: Provider.of<ThemeProvider>(context)
                        .themeData
                        .colorScheme
                        .primary,
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
