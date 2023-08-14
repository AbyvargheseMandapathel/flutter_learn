import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  String data = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar Widget"),
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  data = "This is Arrow Forward Icon";
                });
              },
              icon: Icon(Icons.arrow_forward),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  data = "This is Close Icon";
                });
              },
              icon: Icon(Icons.close),
            ),
          ],
        ),
        body: Center(
          child: Text(data),
        ),
      ),
    );
  }
}
