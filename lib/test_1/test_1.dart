import 'package:dcdg/dcdg.dart';

import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({required Key? key, required this.count}) : super(key: key);

  final int count;



  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}


class CountIncrementor extends StatelessWidget {
  const CountIncrementor({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text('Increment'));
  }
}


