import 'package:flutter/material.dart';

class NoteDelete extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Warning'),
      content: Text('Are you sure you want to delete this note?'),
      actions: <Widget>[
       ElevatedButton(onPressed: Navigator.of(context).pop, child: Text('Yes')),
        ElevatedButton(onPressed: Navigator.of(context).pop, child: Text('No')),
      ],
    );
  }
}
