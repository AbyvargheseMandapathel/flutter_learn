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
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: new Text("Aby Varghese"),
                accountEmail: new Text("test@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: new Text("A"),
                ),
                decoration: new BoxDecoration(color: Colors.orange),
                otherAccountsPictures: [
                  new CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: new Text('a'),
                  ),
                  new CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: new Text('b'),
                  ),
                ],
              ),
              ListTile(
                title: Text("page 1"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("page 2"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Close"),
                trailing: Icon(Icons.close),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
