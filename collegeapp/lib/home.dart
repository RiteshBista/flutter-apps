import 'package:collegeapp/homepage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> custom_widget = <Widget>[
    HomeScreen(),
    Container(
      child: Center(
        child: Text("Welcome to About section "),
      ),
    ),
    Container(
      child: Center(
        child: Text("Welcome to Contact us section "),
      ),
    ),
    Container(
      child: Center(
        child: Text("Welcome to menu section "),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("College App"),
        backgroundColor: Color(0xFF35BDD0),
      ),
      body: Center(
        child: custom_widget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.home),
          Icon(Icons.message),
          Icon(Icons.forum),
          Icon(Icons.menu)
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
