import 'package:flutter/material.dart';

class SettingsOpenYourStorePage extends StatelessWidget {
  const SettingsOpenYourStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Open Your Store",
            style: TextStyle(fontSize: 18, color: Colors.pink),
          )),
    );
  }
}
