import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const String endpoint = 'https://jsonplaceholder.typicode.com/photos';
final Uri url = Uri.parse(endpoint);

var data = null;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Photos App'),
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: data != null
                ? GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: data.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return GridTile(
                        child: Image.network(
                          data[index]['thumbnailUrl'],
                          fit: BoxFit.cover,
                        ),
                        footer: Text(data[index]['title']),
                      );
                    })
                : Center(
                    child: CircularProgressIndicator(),
                  )));
  }
}
