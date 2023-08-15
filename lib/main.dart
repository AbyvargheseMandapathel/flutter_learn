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
  String ptext = "";

  // Declare method to update ptext
  void method(String value) {
    setState(() {
      ptext = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dummy Application"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                method("You Pressed ElevatedButton");
              },
              child: Text("Elevated Button"),
            ),
            TextButton(
              onPressed: () {
                method("You Pressed Text Button");
              },
              child: Text("Text Button"),
            ),
            SizedBox(height: 20), // Added space between buttons and text
            Text(ptext), // Display updated ptext here
          ],
        ),
      ),
    );
  }
}
