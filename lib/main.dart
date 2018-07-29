import 'package:flutter/material.dart';
import 'package:flutter_drawer/newride.dart';
import 'package:flutter_drawer/help.dart';
import 'package:flutter_drawer/home.dart';
import 'package:flutter_drawer/bookings.dart';
import 'package:flutter_drawer/messages.dart';
import 'package:flutter_drawer/promotions.dart';
import 'package:flutter_drawer/about.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(),
      routes: getRoutes(),
    );
  }

  Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      NewRideScreen.routeName: (_) => NewRideScreen(),
      BookingsScreen.routeNameScheduled: (_) =>
          BookingsScreen(bookingType: BookingType.SCHEDULED),
      BookingsScreen.routeNameCompleted: (_) =>
          BookingsScreen(bookingType: BookingType.COMPLETED),
      PromotionsScreen.routeName: (_) =>
          PromotionsScreen(),
      MessagesScreen.routeName: (_) => MessagesScreen(),
      HelpScreen.routeName: (_) => HelpScreen(),
      AboutScreen.routeName: (_) => AboutScreen(),
    };
  }
}
