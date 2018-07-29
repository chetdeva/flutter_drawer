import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  static const String routeName = "/messages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
      ),
      body: Center(
        child: Container(
          child: Text("Messages"),
        ),
      ),
    );
  }
}
