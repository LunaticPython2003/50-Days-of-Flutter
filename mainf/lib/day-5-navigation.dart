import 'package:flutter/material.dart';
import 'package:mainf/pages/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      routes: {'/firstpage': (context) => const FirstPage()},
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Flutter"),
        ),
        body: Center(
            child: ElevatedButton(
          child: const Text(
            "Go to Page 1",
            textAlign: TextAlign.center,
          ),
          onPressed: () => Navigator.pushNamed(context, '/firstpage'),
        )),
      ),
    );
  }
}
