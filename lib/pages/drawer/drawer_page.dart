import 'package:flutter/material.dart';
import 'package:namednavigator/pages/drawer/call_page.dart';
import 'package:namednavigator/pages/drawer/contact_page.dart';
import 'package:namednavigator/pages/setting/setting_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Image.network(
                "https://img.freepik.com/premium-vector/young-smiling-man-avatar-man-with-brown-beard-mustache-hair-wearing-yellow-sweater-sweatshirt-3d-vector-people-character-illustration-cartoon-minimal-style_365941-860.jpg",
                width: 100,
              ),
              const SizedBox(width: 10),
              const Text(
                "Ibroxim",
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                width: 40,
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
            child: Row(
          children: [
            const Text(
              "+998 94 021 2114",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              width: 96,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.change_circle))
          ],
        )),
        Card(
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ProfilePage.route);
                },
                icon: const Icon(Icons.person),
              ),
              const Text("Contact"),
            ],
          ),
        ),
        Card(
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CallPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.call),
              ),
              const Text("Calls"),
            ],
          ),
        ),
        Card(
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, SettingPage.route);
                },
                icon: const Icon(Icons.settings),
              ),
              const Text("Setttings"),
            ],
          ),
        )
      ],
    );
  }
}
