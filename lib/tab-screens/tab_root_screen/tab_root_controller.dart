import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../feed_screen/feed_screen.dart';
import '../inbox_screen/inbox_screen.dart';
import '../likes_screen/likes_screen.dart';

class TabRootController extends GetxController {
  List<Widget> tabScreens = [
    const FeedScreen(),
    const InboxScreen(),
    const LikesScreen(),
  ].obs;

  var tabIndex = 0.obs;
  void changeTabIndex({required int currentIndex, required int lastIndex}) {
    if (currentIndex == lastIndex) {
      Get.toNamed('profile');
    } else {
      tabIndex.value = currentIndex;
    }
  }
}
