import 'package:flutter/material.dart';

class PromotionsScreen extends StatelessWidget {
  static const String routeName = "/promotions";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promotions"),
      ),
      body: Center(
        child: Container(
          child: Text("Promotions"),
        ),
      ),
    );
  }
}
