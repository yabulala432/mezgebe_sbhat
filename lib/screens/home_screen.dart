import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/home/background_color.dart';
import 'package:mezgebe_sbhat/components/home/touchable_item.dart';
import 'package:mezgebe_sbhat/data/msbak_months.dart';
import 'package:mezgebe_sbhat/providers/bottom_nav_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import 'package:mezgebe_sbhat/data/kdase_menu_list.dart';

List<Tab> tabs = const [
  Tab(text: 'ሥርዓተ ቅዳሴ'),
  Tab(text: 'ምስባክ'),
  Tab(text: 'ኪዳን'),
];

List<List<Map<String, dynamic>>> menus = [
  kdaseMenu,
  msbakMenu,
  kidanMenu,
];

List<Map<String, dynamic>> kdaseMenu = [
  {
    "title": "ግእዝ ሥርዓተ ቅዳሴ",
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": KdasePlaylist().playList,
  },
  {
    "title": "ዕዝል ሥርዓተ ቅዳሴ",
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": KdasePlaylist().playList,
  },
  {
    "title": 'ግእዝ ሠራዊት',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": KdasePlaylist().playList,
  },
  {
    "title": 'ዕዝል ሠራዊት',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": KdasePlaylist().playList,
  },
  {
    "title": 'ግእዝ መልክአ ቁርባን',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": KdasePlaylist().playList,
  },
  {
    "title": 'ዕዝል መልክአ ቁርባን',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": KdasePlaylist().playList,
  },
  {
    "title": 'ዕዝል ሠራዊት',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": KdasePlaylist().playList,
  },
];

List<Map<String, dynamic>> msbakMenu = [
  {
    "title": 'መስከረም ምስባክ',
    'name': 'meskerem',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": MeskeremMsbak().playList,
  },
  {
    'title': 'ጥቅምት ምስባክ',
    'name': 'tikimit',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": TkmtMsbak().playList,
  },
  {
    "title": 'ህዳር ምስባክ',
    'name': 'hidar',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": HdarMsbak().playList,
  },
  {
    "title": 'ታህሳስ ምስባክ',
    'name': 'tahisas',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": TahsasMsbak().playList,
  },
  {
    "title": 'ጥር ምስባክ',
    'name': 'tir',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": TirMsbak().playList,
  },
  {
    "title": 'የካቲት ምስባክ',
    'name': 'yekatit',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": YekatitMsbak().playList,
  },
  {
    "title": 'መጋቢት ምስባክ',
    'name': 'megabit',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": MegabitMsbak().playList,
  },
  {
    "title": 'ሚያዝያ ምስባክ',
    'name': 'miyazya',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": MiyazyaMsbak().playList,
  },
  {
    "title": 'ግንቦት ምስባክ',
    'name': 'ginbot',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": GnbotMsbak().playList,
  },
  {
    "title": 'ሰኔ ምስባክ',
    'name': 'sene',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": SeneMsbak().playList,
  },
  {
    "title": 'ሐምሌ ምስባክ',
    'name': 'hamle',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": HamleMsbak().playList,
  },
  {
    "title": 'ነሐሴ ምስባክ',
    'name': 'nehase',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": NehaseMsbak().playList,
  },
  {
    "title": 'ጳጉሜን ምስባክ',
    'name': 'puagmen',
    'imageUrl': 'assets/images/kdase.jpg',
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": PuagmenMsbak().playList,
  },
];

List<Map<String, dynamic>> kidanMenu = [
  {
    "title": "ግእዝ ኪዳን",
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": KdasePlaylist().playList,
  },
  {
    "title": "ዕዝል ኪዳን",
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": KdasePlaylist().playList,
  },
  {
    "title": 'አራራይ ኪዳን',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": KdasePlaylist().playList,
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget buildPage(List<Map<String, dynamic>> items) {
    return SafeArea(
      top: false,
      bottom: false,
      child: CustomScrollView(
        controller: ScrollController(),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: items.length,
              (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: TouchableItem(
                    imageUrl: items[index]['imageUrl'],
                    title: items[index]['title'],
                    subtitle: items[index]['subTitle'],
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              BottomNavApp(
                            menu: items[index]['playList'],
                          ),
                          transitionDuration: const Duration(seconds: 0),
                          reverseTransitionDuration: const Duration(seconds: 0),
                        ),
                      );
                      print("Tapped on $index");
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).themeData.colorScheme;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: theme.surface,
          title: null,
          toolbarHeight: 0,
          bottom: TabBar(
            dividerColor: theme.surface,
            overlayColor: WidgetStateColor.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return theme.primary.withOpacity(0.1);
              }
              return theme.primary;
            }),
            labelColor: theme.primary,
            unselectedLabelColor: theme.primary,
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            indicatorColor: theme.primary,
            tabs: tabs,
            isScrollable: false,
          ),
        ),
        body: BackgroundColor(
          color: theme.surface,
          child: TabBarView(
            children: menus.map((items) => buildPage(items)).toList(),
          ),
        ),
      ),
    );
  }
}
