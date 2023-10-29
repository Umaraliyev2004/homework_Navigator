import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
 static const  String route = "/setting";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Telegram Settings"),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
