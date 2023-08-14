import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application>
    with SingleTickerProviderStateMixin {
  late TabController _tabController; // Declare as 'late'

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose the TabController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar"),
          bottom: TabBar(
            controller: _tabController, // Provide the TabController here
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.supervisor_account)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Text("Welcome to Home")),
            Center(child: Text("Welcome to User Account")),
            Center(child: Text("Settings")),
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.blue,
          child: TabBarView(
            controller: _tabController,
            children: [
              Center(child: Text("Welcome to Home")),
              Center(child: Text("Welcome to User Account")),
              Center(child: Text("Settings")),
            ],
          ),
        ),
      ),
    );
  }
}
