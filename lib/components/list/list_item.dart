import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/services/file_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListItem extends StatefulWidget {
  final String title;
  final String url;
  final String folderName;
  final bool disabled;
  final void Function() onPressed;

  const ListItem({
    super.key,
    required this.title,
    required this.folderName,
    required this.url,
    this.disabled = false,
    required this.onPressed,
  });

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isDownloading = false;
  @override
  Widget build(BuildContext context) {
    Future<bool> deleteFile(String title) async {
      return Provider.of<FileService>(context, listen: false).deleteFile(
        fileName: '${widget.title.replaceAll(' ', '_')}.mp3',
        folderName: widget.folderName,
      );
    }

    void popDialogue() {
      Navigator.pop(context);
    }

    return Slidable(
        key: ValueKey(widget.url),
        endActionPane: ActionPane(
          extentRatio: 0.3,
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Provider.of<ThemeProvider>(context)
                      .themeData
                      .colorScheme
                      .surface,
                  title: Text(
                    style: TextStyle(
                      color: Provider.of<ThemeProvider>(context)
                          .themeData
                          .colorScheme
                          .onPrimary,
                    ),
                    'መሰረዝን ያረጋግጡ',
                  ),
                  content: Text(
                    style: TextStyle(
                      color: Provider.of<ThemeProvider>(context)
                          .themeData
                          .colorScheme
                          .onPrimary,
                    ),
                    'እርግጠኛ ኖት "${widget.title}"ን መሰረዝ ይፈልጋሉ"?',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => popDialogue(),
                      child: Text(
                        style: TextStyle(
                          color: Provider.of<ThemeProvider>(context)
                              .themeData
                              .colorScheme
                              .onPrimary,
                        ),
                        'Cancel',
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        final response = await deleteFile(widget.title);
                        if (response) {
                          setState(() {
                            fileExists = false;
                          });
                        }
                        popDialogue();
                      },
                      child: Text(
                          style: TextStyle(
                            color: Provider.of<ThemeProvider>(context)
                                .themeData
                                .colorScheme
                                .primary,
                          ),
                          'Delete'),
                    ),
                  ],
                ),
              ),
              label: 'አጥፋ',
              backgroundColor: Provider.of<ThemeProvider>(context)
                  .themeData
                  .colorScheme
                  .error,
              foregroundColor: Provider.of<ThemeProvider>(context)
                  .themeData
                  .colorScheme
                  .onPrimary,
              icon: Icons.delete,
            )
          ],
        ),
        child: InkWell(
          onTap: () async {
            if (widget.disabled || isDownloading) {
              return;
            } else if (!await doesFileExist()) {
              downloadFile();
            } else {
              widget.onPressed();
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/images/listImage.jpg"),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          color: Provider.of<ThemeProvider>(context)
                              .themeData
                              .colorScheme
                              .primary,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: isDownloading
                      ? Consumer<FileService>(
                          builder: (context, FileService fileService, child) {
                          return CircularProgressIndicator(
                            value: fileService.getDownloadProgress(
                                fileId: widget.url),
                            color: Provider.of<ThemeProvider>(context)
                                .themeData
                                .colorScheme
                                .primary,
                            backgroundColor: Colors.white,
                          );
                        })
                      : fileExists
                          ? Icon(
                              const FaIcon(FontAwesomeIcons.play).icon,
                              size: 40,
                              color: Provider.of<ThemeProvider>(context)
                                  .themeData
                                  .colorScheme
                                  .primary,
                            )
                          : Icon(
                              const FaIcon(
                                FontAwesomeIcons.download,
                              ).icon,
                              size: 35,
                              color: Provider.of<ThemeProvider>(context)
                                  .themeData
                                  .colorScheme
                                  .primary,
                            ),
                ),
              ],
            ),
          ),
        ));
  }

  bool fileExists = false;

  @override
  void initState() {
    super.initState();
    doesFileExist();
  }

  void downloadFile() async {
    if (!mounted) return;
    setState(() {
      isDownloading = true;
    });
    await Provider.of<FileService>(context, listen: false)
        .downloadFile(
      url: widget.url,
      fileName: widget.title,
      fileId: widget.url,
      folderName: widget.folderName,
    )
        .then((value) {
      if (value != null && mounted) {
        setState(() {
          fileExists = true;
          isDownloading = false;
        });
      } else if (mounted) {
        setState(() {
          fileExists = false;
        });
      }
    }).catchError((error) {
      if (mounted) {
        setState(() {
          isDownloading = false;
        });
      }
    });
  }

  Future<bool> doesFileExist() async {
    bool value =
        await Provider.of<FileService>(context, listen: false).doesFileExist(
      fileName: '${widget.title.replaceAll(' ', '_')}.mp3',
      folderName: widget.folderName,
    );
    if (value) {
      if (!mounted) return false;
      setState(() {
        fileExists = true;
      });
    }
    return value;
  }
}
