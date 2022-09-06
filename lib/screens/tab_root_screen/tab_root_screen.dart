import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../consts.dart';
import '../../widgets/app_bar.dart';
import 'tab_root_controller.dart';

class TabRootScreen extends StatelessWidget {
  TabRootScreen({Key? key}) : super(key: key);
  final TabRootController _tabRootController = Get.put(TabRootController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        appBar: CustomAppBar(
            title: _tabRootController
                .tabScreens[_tabRootController.tabIndex.value]["title"]),
        bottomNavigationBar: _bottomNav(),
        body: SafeArea(
          bottom: false,
          child: Obx(
            () => _tabRootController
                .tabScreens[_tabRootController.tabIndex.value]["screen"],
          ),
        ),
      ),
    );
  }

  CurvedNavigationBar _bottomNav() {
    return CurvedNavigationBar(
      height: 65.0,
      backgroundColor: Colors.transparent,
      color: Colors.white,
      animationDuration: const Duration(milliseconds: 300),
      index: _tabRootController.tabIndex.value,
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
