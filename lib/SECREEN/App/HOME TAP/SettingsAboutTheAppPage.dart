import 'package:flutter/material.dart';

class SettingsAboutTheAppPage extends StatelessWidget {
  const SettingsAboutTheAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "About The App",
            style: TextStyle(fontSize: 18, color: Colors.pink),
          )),
    );
  }
}
