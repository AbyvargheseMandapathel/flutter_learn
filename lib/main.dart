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
  bool sbool = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dummy Application"),
        ),
        body: Center(
          child: new Switch(
              value: sbool,
              onChanged: (bool sb) {
                setState(() {
                  sbool = sb;
                  print(sbool);
                });
              }),
        ),
      ),
    );
  }
}
