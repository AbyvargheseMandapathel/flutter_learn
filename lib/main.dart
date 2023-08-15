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
  // Declare variables to store text values for the TextFields
  String textField1Text = '';
  String textField2Text = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dummy Application"),
        ),
        body: Column(
          children: [
            TextField(
              // Store the value of the first TextField in textField1Text
              onChanged: (String txt) {
                setState(() {
                  textField1Text = txt;
                });
              },
              decoration: InputDecoration(
                labelText: "Text Field 1",
              ),
            ),
            TextField(
              // Store the value of the second TextField in textField2Text
              onSubmitted: (String txt) {
                setState(() {
                  textField2Text = txt;
                });
              },
              decoration: InputDecoration(
                hintText: "Tyoe Something",
                labelText: "Text Field 2",
              ),
            ),
            // Display the text values of the TextFields
            Text("Text from TextField 1: $textField1Text"),
            Text("Text from TextField 2: $textField2Text"),
          ],
        ),
      ),
    );
  }
}
