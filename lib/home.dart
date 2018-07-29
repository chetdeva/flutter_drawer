import 'package:flutter/material.dart';
import 'package:flutter_drawer/constants.dart';
import 'package:flutter_drawer/drawer.dart';
import 'package:flutter_drawer/user.dart';
import 'dart:collection';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final User user = Constants.user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.APP_NAME),
      ),
      body: Container(
          child: Center(
        child: Text("Home"),
      )),
      drawer: createNavDrawer(context),
    );
  }

  Drawer createNavDrawer(BuildContext context) {
    Widget drawerHeader = createDrawerHeader(context);
    Widget drawerFooter = createDrawerFooter(context);

    List<Widget> drawerItems = createDrawerItems(context);
    drawerItems.insert(0, drawerHeader);
    drawerItems.insert(drawerItems.length, drawerFooter);

    ListView listView = ListView(children: drawerItems);

    return Drawer(
      child: listView,
      elevation: 16.0,
    );
  }

  List<Widget> createDrawerItems(BuildContext context) {
    List<Widget> drawerItems = <Widget>[];

    Map<DrawerItemType, bool> headers = HashMap();
    DrawerItemType.values.forEach((DrawerItemType type) {
      headers[type] = false;
    });

    Constants.DRAWER_ITEMS.forEach((DrawerItem item) {
      var headerTile;
      if (headers[item.type] == false) {
        headerTile = DrawerHeaderItemTile(
          drawerHeader:
              DrawerHeaderItem(title: item.getDrawerHeaderItemTitle()),
        );
        headers[item.type] = true;
      }
      var itemTile = DrawerItemTile(drawerItem: item, onTap: onDrawerItemTap);
      if (headerTile != null) {
        drawerItems.add(headerTile);
      }
      drawerItems.add(itemTile);
    });
    return drawerItems;
  }

  Widget createDrawerHeader(BuildContext context) =>
      DrawerHeaderTile(user: user);

  Widget createDrawerFooter(BuildContext context) =>
      DrawerFooterTile(title: "Logout", onTap: onDrawerFooterTap);

  void onDrawerItemTap(DrawerItem item) {
    setState(() {
      Navigator.of(context).pop();
      // navigate to the route
      Navigator.of(context).pushNamed(item.route);
    });
  }

  void onDrawerFooterTap() {
    //TODO: logout user
  }
}
