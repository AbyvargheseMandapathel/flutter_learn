import 'package:flutter/material.dart';

void main() {
  runApp(new application());
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => new _applicationState();
}

class _applicationState extends State<application> {
  String text = "";
  @override
  void initState() {
    text = 'Click On This Button';
    super.initState();
  }

  void method() {
    setState(() {
      text = 'The text is changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateful Widget',
      home: new Scaffold(
        body: new Center(
          child: new ElevatedButton(
            onPressed: () {
              method();
            },
            child: new Text(text),
          ),
        ),
      ),
    );
  }
}
