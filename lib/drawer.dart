import 'package:flutter/material.dart';
import 'package:flutter_drawer/user.dart';
import 'package:flutter_drawer/utils.dart';

class DrawerHeaderItem {
  final title;

  DrawerHeaderItem({@required this.title}) : assert(title != null);
}

class DrawerHeaderItemTile extends StatelessWidget {
  final DrawerHeaderItem drawerHeader;

  DrawerHeaderItemTile({Key key, @required this.drawerHeader})
      : assert(drawerHeader != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
          border: Border(
            bottom: Divider.createBorderSide(context,
                color: Colors.grey, width: 0.5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(drawerHeader.title,
              style: Theme.of(context).textTheme.subhead),
        ),
      ),
    );
  }
}

class DrawerItem {
  final DrawerItemType type;
  final String route;
  final String title;
  final IconData icon;

  const DrawerItem({
    @required this.type,
    @required this.route,
    @required this.title,
    @required this.icon,
  })  : assert(type != null),
        assert(route != null),
        assert(title != null),
        assert(icon != null);

  String getDrawerHeaderItemTitle() {
    switch (type) {
      case DrawerItemType.BOOKING:
        return "Booking";
      case DrawerItemType.MESSAGING:
        return "Messaging";
      case DrawerItemType.INFORMATION:
        return "Information";
      default:
        return "";
    }
  }
}

class DrawerItemTile extends StatelessWidget {
  final DrawerItem drawerItem;
  final ValueChanged<DrawerItem> onTap;

  DrawerItemTile({
    Key key,
    @required this.drawerItem,
    @required this.onTap,
  })  : assert(drawerItem != null),
        assert(onTap != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black54,
          border: Border(
            bottom: Divider.createBorderSide(context,
                color: Colors.grey, width: 0.5),
          ),
        ),
        child: InkWell(
          onTap: () => onTap(drawerItem),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 16.0, top: 8.0, right: 16.0, bottom: 8.0),
                child: Icon(drawerItem.icon),
              ),
              Center(
                child: Text(
                  drawerItem.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subhead,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerItemType { BOOKING, MESSAGING, INFORMATION }

class DrawerHeaderTile extends StatelessWidget {
  final User user;

  DrawerHeaderTile({Key key, @required this.user})
      : assert(user != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      padding: const EdgeInsets.all(24.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              decoration: ShapeDecoration(
                shape: CircleBorder(
                    side: BorderSide(color: Colors.white, width: 1.0)),
              ),
              child: CircleAvatar(
                backgroundImage: ImageUtils.applyImage(user.picUrl, 'assets/icons/ic_pic_male_placeholder.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                user.name,
                style: Theme.of(context).textTheme.headline,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerFooterTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const DrawerFooterTile({Key key, @required this.title, @required this.onTap})
      : assert(title != null),
        assert(onTap != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.only(top: 24.0),
        child: Container(
          color: Colors.red,
          child: InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 16.0, top: 8.0, right: 16.0, bottom: 8.0),
                  child: Icon(Icons.adjust),
                ),
                Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subhead,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
