import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    new MaterialApp(
      home: new HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<String?> getData() async {
    http.Response response = await http.get(
      Uri.parse(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
      ),
      headers: {"Accept": "application/json"},
    );
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new ElevatedButton(
          onPressed: getData,
          child: Text("Get data"),
        ),
      ),
    );
  }
}
