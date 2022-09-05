import 'package:dating_app/consts.dart';
import 'package:dating_app/tab-screens/feed_screen/feed_screen.dart';
import 'package:dating_app/tab-screens/tab_root_screen/tab_root_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/profile_screen/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kAppTheme,
      initialRoute: 'home',
      routes: {
        'home': (context) => TabRootScreen(),
        'profile': (context) => const ProfileScreen(),
      },
    );
  }
}
