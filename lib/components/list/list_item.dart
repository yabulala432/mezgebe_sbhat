import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/services/file_service.dart';
import 'package:provider/provider.dart';
import 'package:percent_indicator/percent_indicator.dart';

// ignore: must_be_immutable
class ListItem extends StatefulWidget {
  final String title;
  final String url;
  final bool disabled;
  final void Function() onPressed;

  const ListItem({
    super.key,
    required this.title,
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
    // print(
    //     'download Progress: ${Provider.of<FileService>(context, listen: true).downloadProgress}');
    return InkWell(
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
                      return CircularPercentIndicator(
                        radius: 25,
                        lineWidth: 4.0,
                        percent:
                            fileService.getDownloadProgress(fileId: widget.url),
                        progressColor: Provider.of<ThemeProvider>(context)
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
    );
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
    bool value = await Provider.of<FileService>(context, listen: false)
        .doesFileExist(fileName: '${widget.title.replaceAll(' ', '_')}.mp3');
    if (value) {
      if (!mounted) return false;
      setState(() {
        fileExists = true;
      });
    }
    return value;
  }
}
