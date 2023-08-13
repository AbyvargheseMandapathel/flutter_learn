import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  List<int> _items = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 50; i++) {
      _items.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "New Test App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid"),
        ),
        body: GridView.builder(
          itemCount: _items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    _items[index].toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
