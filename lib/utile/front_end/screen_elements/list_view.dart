import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_view extends StatelessWidget {
  const list_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("list_view"),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Expanded(
                // wrap in Expanded
                child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Entry B')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Entry C')),
                ),
              ],
            )),
          ]),
        ));
  }
}
