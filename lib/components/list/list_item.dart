import 'package:mezgebe_sbhat/components/home/separator.dart';
import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const ListItem({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  double _opacity = 1.0;

  String get title => widget.title;

  void _handleTap() {
    widget.onTap();
    setState(() {
      _opacity = 0.3;
    });
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(milliseconds: 200),
          child: InkWell(
            onTap: () => _handleTap(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/originals/85/d8/48/85d848a150ae62dd547190043e513e78.jpg",
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Color(0xFFEE631E),
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Separator(
          indent: 65,
          height: 0,
        ),
      ],
    );
  }
}
