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
  double dtext = 2.0;

  void method1(double value) {
    setState(() {
      dtext = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dummy Application"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                value: dtext,
                min: 1.0,
                max: 10.0,
                onChanged: (double dval) {
                  method1(dval);
                },
              ),
              Text("This is the value: $dtext"),
            ],
          ),
        ),
      ),
    );
  }
}
