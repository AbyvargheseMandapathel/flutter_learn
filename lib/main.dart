import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Wrap with MaterialApp
      title: "New Test App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Widget"),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Card(
              color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(100.0),
              ),
            ),
            Card(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(90.0),
              ),
            ),
            Card(
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(80.0),
              ),
            ),
            Card(
              color: Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.all(70.0),
              ),
            ),
            Card(
              color: Colors.purple,
              child: Padding(
                padding: const EdgeInsets.all(60.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
