import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  static const String routeName = "/help";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Help"),
      ),
      body: new Container(
          child: new Center(
        child: new Text("Help"),
      )),
    );
  }
}
