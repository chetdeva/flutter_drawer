import 'package:flutter/material.dart';

class NewRideScreen extends StatelessWidget {
  static const String routeName = "/newride";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Ride"),
      ),
      body: Container(
          child: Center(
        child: Text("New Ride Screen"),
      )),
    );
  }
}
