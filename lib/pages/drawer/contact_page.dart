import 'package:flutter/material.dart';
import 'package:namednavigator/pages/setting/setting_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static const String route = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingPage(),
                ),
              );
            },
            icon: const Icon(Icons.settings_applications_sharp),
          ),
        ],
        title: const Text("Profile section"),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView(),
    );
  }
}
