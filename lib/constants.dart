import 'package:flutter/material.dart';
import 'package:flutter_drawer/bookings.dart';
import 'package:flutter_drawer/help.dart';
import 'package:flutter_drawer/messages.dart';
import 'package:flutter_drawer/newride.dart';
import 'package:flutter_drawer/promotions.dart';
import 'package:flutter_drawer/drawer.dart';
import 'package:flutter_drawer/about.dart';
import 'package:flutter_drawer/user.dart';

class Constants {
  static User user = User(
      name: "V for Vendetta",
      picUrl:
          "https://www.ienglishstatus.com/wp-content/uploads/2018/04/Anonymous-Whatsapp-profile-picture.jpg");

  static const String APP_NAME = "Drawer App";

  static const DRAWER_ITEMS = <DrawerItem>[
    const DrawerItem(
      type: DrawerItemType.BOOKING,
      route: NewRideScreen.routeName,
      title: "New Ride",
      icon: Icons.local_taxi,
    ),
    const DrawerItem(
      type: DrawerItemType.BOOKING,
      route: BookingsScreen.routeNameScheduled,
      title: "Scheduled Bookings",
      icon: Icons.assignment,
    ),
    const DrawerItem(
      type: DrawerItemType.BOOKING,
      route: BookingsScreen.routeNameCompleted,
      title: "Completed",
      icon: Icons.import_export,
    ),
    const DrawerItem(
      type: DrawerItemType.MESSAGING,
      route: PromotionsScreen.routeName,
      title: "Promotions",
      icon: Icons.label_outline,
    ),
    const DrawerItem(
      type: DrawerItemType.MESSAGING,
      route: MessagesScreen.routeName,
      title: "Messages",
      icon: Icons.message,
    ),
    const DrawerItem(
      type: DrawerItemType.INFORMATION,
      route: HelpScreen.routeName,
      title: "Help",
      icon: Icons.help_outline,
    ),
    const DrawerItem(
      type: DrawerItemType.INFORMATION,
      route: AboutScreen.routeName,
      title: "About",
      icon: Icons.info_outline,
    ),
  ];
}
