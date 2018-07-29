import 'package:flutter/material.dart';

class BookingsScreen extends StatelessWidget {
  static const String routeNameScheduled = "/bookings/scheduled";
  static const String routeNameCompleted = "/bookings/completed";
  final BookingType bookingType;

  BookingsScreen({@required this.bookingType})
      : assert(bookingType != null);

  @override
  Widget build(BuildContext context) {
    var title = getTitle(bookingType);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          child: Text(title),
        ),
      ),
    );
  }

  String getTitle(BookingType bookingType) {
    switch (bookingType) {
      case BookingType.SCHEDULED:
        return "Scheduled Bookings";
      case BookingType.COMPLETED:
        return "Completed Bookings";
      default:
        return "Bookings";
    }
  }
}

enum BookingType { SCHEDULED, COMPLETED }
