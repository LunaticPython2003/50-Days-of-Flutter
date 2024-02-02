import "package:flutter/material.dart";

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("The Home Page!")),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                "Home Page",
              ),
              onTap: () => {
                Navigator.pop(context),
                Navigator.pushNamed(context, '/homepage'),
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                "Settings",
              ),
              onTap: () => {
                Navigator.pop(context),
                Navigator.pushNamed(context, '/settings'),
              },
            ),
          ],
        ),
      ),
    );
  }
}
