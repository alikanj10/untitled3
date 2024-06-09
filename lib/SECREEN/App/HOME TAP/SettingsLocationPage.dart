import 'package:flutter/material.dart';

class SettingsLocationPage extends StatelessWidget {
  const SettingsLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F6FF),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Location",
            style: TextStyle(fontSize: 18, color: Colors.pink),
          )),
    );
  }
}
