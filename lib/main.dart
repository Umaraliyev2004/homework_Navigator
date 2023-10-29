import 'package:flutter/material.dart';
import 'package:namednavigator/pages/home/home_page.dart';
import 'package:namednavigator/pages/drawer/contact_page.dart';
import 'package:namednavigator/pages/setting/setting_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
        SettingPage.route: (context) => const SettingPage(),
        ProfilePage.route: (context) => const ProfilePage(),
      },
    );
  }
}
