import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dating_app/tab-screens/inbox_screen/inbox_screen.dart';
import 'package:dating_app/tab-screens/likes_screen/likes_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../consts.dart';
import '../feed_screen/feed_screen.dart';
import 'tab_root_controller.dart';

class TabRootScreen extends StatelessWidget {
  TabRootScreen({Key? key}) : super(key: key);
  final TabRootController _tabRootController = Get.put(TabRootController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      bottomNavigationBar: _bottomNav(),
      body: Obx(
        () => _tabRootController.tabScreens[_tabRootController.tabIndex.value],
      ),
    );
  }

  CurvedNavigationBar _bottomNav() {
    return CurvedNavigationBar(
      backgroundColor: kbodyBackgroundColor,
      animationDuration: const Duration(milliseconds: 300),
      items: const <Widget>[
        Icon(Icons.home, size: 22),
        Icon(Icons.message, size: 22),
        Icon(FontAwesomeIcons.heart, size: 22),
        Icon(FontAwesomeIcons.user, size: 22),
      ],
      onTap: (int index) {
        _tabRootController.changeTabIndex(currentIndex: index, lastIndex: 3);
      },
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text("Explore"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.bell, color: Colors.black),
        ),
        const SizedBox(width: 8.0),
        const Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/7611746?v=4"),
          ),
        )
      ],
    );
  }
}
