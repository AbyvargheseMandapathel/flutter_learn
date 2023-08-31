import 'package:flutter/material.dart';
import 'otherpage.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ApplicationState(),
      routes: {
        '/page1': (context) => op("page 1"),
        '/page2': (context) => op("page 2"),
      },
    );
  }
}

class ApplicationState extends StatefulWidget {
  @override
  _ApplicationStateState createState() => _ApplicationStateState();
}

class _ApplicationStateState extends State<ApplicationState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dummy Application"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Aby Varghese"),
              accountEmail: Text("test@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black26,
                child: Text("A"),
              ),
              decoration: BoxDecoration(color: Colors.orange),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: Text('a'),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: Text('b'),
                ),
              ],
            ),
            ListTile(
              title: Text("page 1"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).pushNamed('/page1'),
            ),
            ListTile(
              title: Text("page 2"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).pushNamed('/page2'),
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
