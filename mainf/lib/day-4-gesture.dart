import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void userTapped() {
  print("Hello World");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(alignment: Alignment.center, children: [
          GestureDetector(
              onTap: userTapped,
              child: Container(
                height: 400,
                width: 400,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: const Center(
                  child: Text("Tap me!"),
                ),
              )),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(color: Colors.deepPurple[200]),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.deepPurple[400]),
          )
        ]),
      ),
    );
  }
}
