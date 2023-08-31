import 'package:flutter/material.dart';

class op extends StatelessWidget {
  final String mtext;
  op(this.mtext);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(mtext),
      ),
      body: new Center(
        child: new Text(mtext),
      ),
    );
  }
}
