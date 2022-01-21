import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen3 extends StatelessWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("screen3"),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                //width: 100,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 200,
              width: 200,
            ),
          ]),
        ));
  }
}
