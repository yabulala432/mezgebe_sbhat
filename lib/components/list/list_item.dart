import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:mezgebe_sbhat/services/file_service.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ListItem extends StatefulWidget {
  final String title;
  final String url;
  final bool disabled;
  final void Function() onPressed;

  late FileService fileService = FileService();

  ListItem({
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
                  ? const CircularProgressIndicator()
                  : fileExists
                      ? Icon(
                          const FaIcon(FontAwesomeIcons.play).icon,
                          size: 40,
                          color: Provider.of<ThemeProvider>(context)
                              .themeData
                              .colorScheme
                              .secondary,
                        )
                      : IconButton(
                          color: Provider.of<ThemeProvider>(context)
                              .themeData
                              .colorScheme
                              .secondary,
                          iconSize: 35,
                          onPressed: () {},
                          icon: Icon(
                            const FaIcon(
                              FontAwesomeIcons.download,
                            ).icon,
                          ),
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
    widget.fileService = FileService();
    doesFileExist();
  }

  void downloadFile() async {
    setState(() {
      isDownloading = true;
    });
    await widget.fileService
        .downloadFile(
      url: widget.url,
      fileName: widget.title,
      fileType: 'wma',
    )
        .then((value) {
      print("value is $value");
      setState(() {
        isDownloading = false;
      });
    }).catchError((error) {
      print("$error is the error");
      setState(() {
        isDownloading = false;
      });
    });
  }

  Future<bool> doesFileExist() async {
    bool value = await widget.fileService
        .doesFileExist(fileName: '${widget.title.replaceAll(' ', '_')}.wma');
    setState(() {
      fileExists = true;
    });
    return value;
  }
}
