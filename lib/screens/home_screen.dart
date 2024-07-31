import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/home/background_color.dart';
import 'package:mezgebe_sbhat/components/home/touchable_item.dart';
import 'package:mezgebe_sbhat/data/kidans_playlist.dart';
import 'package:mezgebe_sbhat/data/msbak_months.dart';
import 'package:mezgebe_sbhat/menus/kdase_menu.dart';
import 'package:mezgebe_sbhat/menus/kidan_menu.dart';
import 'package:mezgebe_sbhat/menus/msbak_menu.dart';
import 'package:mezgebe_sbhat/models/menu.dart';
import 'package:mezgebe_sbhat/providers/bottom_nav_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';

List<Tab> tabs = const [
  Tab(text: 'ሥርዓተ ቅዳሴ'),
  Tab(text: 'ምስባክ'),
  Tab(text: 'ኪዳን'),
];

List<List<Menu>> menus = [
  kdaseMenu,
  msbakMenu,
  kidanMenu,
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget buildPage(List<Menu> items) {
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
                    imageUrl: items[index].imageUrl,
                    title: items[index].title,
                    subtitle: items[index].subTitle,
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              BottomNavApp(
                            menuClass: items[index].playList,
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
            indicatorWeight: 3,
            dividerColor: theme.surface,
            overlayColor: WidgetStateColor.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return theme.primary.withOpacity(0.1);
              }
              // when hovered over, the opacity of the color changes
              if (states.contains(WidgetState.hovered)) {
                return theme.primary.withOpacity(0.3);
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
