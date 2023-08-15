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
  bool cbool = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dummy Application"),
        ),
        body: Center(
          child: Checkbox(
            value: cbool, // Use the variable 'cbool' as the value
            onChanged: (bool? cb) {
              if (cb != null) {
                // Make sure to handle the null value of cb
                setState(() {
                  cbool = cb;
                  print(cbool);
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
