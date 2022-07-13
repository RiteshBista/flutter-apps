import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: Column(
        children: [
          Text("logged in as"),
          Text(user.email!),
          TextButton(onPressed: () {}, child: Text('Signout'))
        ],
      ),
    );
  }
}
