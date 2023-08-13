import 'package:flutter/material.dart';

void main() {
  runApp(new application());
}

class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My Application',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("List Widget"),
        ),
        body: new ListView(
          children: [
            new ListTile(
              title: new Text('Item 1'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('Item 2'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('Item 3'),
              trailing: new Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
