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
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, int index) {
          return Card(
            color: Colors.white,
            child: ListTile(
              leading: IconButton(onPressed: () {}, icon: const Icon(Icons.person_2)),
              title:  Text("${index + 1} Anvarjon"),
              subtitle: const Text(
                "+998 94 021 2114",
              ),
              textColor: Colors.black,
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.call_outlined),
              ),
            ),
          );
        },
      ),
    );
  }
}
