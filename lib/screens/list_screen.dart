import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/home/separator.dart';
import 'package:mezgebe_sbhat/components/list/list_item.dart';
import 'package:mezgebe_sbhat/providers/playlist_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/screens/bottom_nav_state.dart';
import 'package:mezgebe_sbhat/services/file_service.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatefulWidget {
  ListScreen({super.key});
  final FileService fileService = FileService();

  @override
  State<ListScreen> createState() => _ListScreen();
}

class _ListScreen extends State<ListScreen> with AutomaticKeepAliveClientMixin {
  bool isDownloading = false;

  late FileService fileService;

  @override
  void initState() {
    super.initState();
    fileService = widget.fileService;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final lists = Provider.of<PlayListProvider>(context).playList;
    return Material(
      child: Scaffold(
        backgroundColor: Provider.of<ThemeProvider>(context)
            .themeData
            .colorScheme
            .background,
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
                      onPressed: () async {
                        bool fileExists = await fileService.doesFileExist(
                            fileName:
                                '${lists[index].title.replaceAll(' ', '_')}.mp3');
                        if (fileExists) {
                          Provider.of<BottomNavState>(context, listen: false)
                              .navigateToScreen2();

                          Provider.of<PlayListProvider>(context, listen: false)
                              .playIndex(index);
                        } else {
                          fileService
                              .downloadFile(
                                url: lists[index].audioUrl,
                                fileName: lists[index].title,
                              )
                              .then(
                                (value) => {
                                  Provider.of<BottomNavState>(context,
                                          listen: false)
                                      .navigateToScreen2(),
                                  Provider.of<PlayListProvider>(context,
                                          listen: false)
                                      .playIndex(index),
                                },
                              );
                        }
                      }),
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
