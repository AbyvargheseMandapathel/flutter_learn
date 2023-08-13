import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  final List<int> items = List.generate(50, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "New Test App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Widget"),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("item no: ${items[index]}"),
              trailing: Icon(Icons.arrow_forward),
            );
          },
        ),
      ),
    );
  }
}
