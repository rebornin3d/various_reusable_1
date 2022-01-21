import 'package:flutter/material.dart';
import 'package:flutter_application_1/constructors/cities.dart';

class NoteModify extends StatelessWidget {



  final String? noteID;
  bool get isEditing => noteID != null;

  NoteModify({this.noteID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isEditing ? 'Edit note' : 'Create note')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            TextField(decoration: InputDecoration(hintText: 'Note title')),
            TextField(decoration: InputDecoration(hintText: 'Note content')),
            SizedBox(
              width: double.infinity,
              height: 35.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
