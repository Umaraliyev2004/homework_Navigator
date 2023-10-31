import 'package:flutter/material.dart';
import 'package:namednavigator/pages/drawer/contact_page.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
        title: const Text("Part of Calls"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, int index) {
          return Card(
            color: Colors.white,
            child: ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_2),
              ),
              title: Text("${index + 1} Anvarjon"),
              subtitle: const Text(
                "double calls",
                style: TextStyle(color: Colors.red),
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
