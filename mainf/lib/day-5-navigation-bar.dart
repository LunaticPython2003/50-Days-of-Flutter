import "package:flutter/material.dart";
import "package:mainf/navigation-bar/home-page.dart";
import "package:mainf/navigation-bar/settings-page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/settings': (context) => const SettingsPage()
      },
    );
  }
}
