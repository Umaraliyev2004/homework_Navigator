import 'package:flutter/material.dart';
import 'package:namednavigator/pages/drawer/drawer_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String route = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Telegram"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        child: DrawerPage(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit_outlined),
      ),
    );
  }
}
