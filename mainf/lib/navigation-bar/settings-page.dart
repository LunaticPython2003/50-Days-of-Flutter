import 'package:flutter/material.dart';

void main() {
  runApp(const SettingsPage());
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Welcome to Settings",
        textAlign: TextAlign.center,
      )),
    );
  }
}
