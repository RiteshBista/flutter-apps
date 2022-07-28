// ignore_for_file: unused_label

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mylogin/Screen/geolocator.dart';
import 'package:mylogin/Screen/maphomescreen.dart';
import 'package:mylogin/Screen/sidebar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      drawer: MyDrawer(),
      body: Column(
        children: [
          Text("logged in as by"),
          Text(user.email!),
          ElevatedButton(
            child: Text('SideBbar'),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyDrawer())),
          ),
          ElevatedButton(
            child: Text('Map'),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp())),
          ),
          TextButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: Text('Signout'))
        ],
      ),
    );
  }
}
