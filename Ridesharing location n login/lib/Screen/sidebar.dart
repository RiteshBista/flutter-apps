import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: Text('Ray Mini Scooter')),
          ListTile(
            title: Text('Payment'),
          ),
          ListTile(
            title: Text('Ride History'),
          ),
          ListTile(
            title: Text('How to ride'),
          ),
          ListTile(
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
