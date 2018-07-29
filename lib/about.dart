import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = "/about";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About"),
      ),
      body: new Container(
          child: new Center(
        child: new Text("About"),
      )),
    );
  }
}
