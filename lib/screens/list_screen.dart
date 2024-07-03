import 'package:mezgebe_sbhat/screens/player_screen.dart';
import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/list/list_item.dart';

class ListScreen extends StatelessWidget {
  static const data = [
    "01. እምነ በሐ",
    "02. መስቀል አብርሃ",
    "03. ኦ ሥሉስ_ቅዱስ",
  ];

  const ListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF212832),
        appBar: AppBar(
          backgroundColor: const Color(0xFFEE631E),
          title: const Text(
            "List Screen",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 8.0),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListItem(
                title: data[index],
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        const PlayerScreen(),
                    transitionDuration: const Duration(seconds: 0),
                    reverseTransitionDuration: const Duration(seconds: 0),
                  ));
                },
              );
            },
          ),
        ),
    );
  }
}
