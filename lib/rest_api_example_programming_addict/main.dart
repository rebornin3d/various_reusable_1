import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:dcdg/dcdg.dart';
//to continue from part 1

import 'note_list.dart';
import 'notes_service.dart';


void setupLocator(){
  //I is a shortcut for instance
  GetIt.I.registerLazySingleton(() => NotesService());

}

void main() {
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterDemo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NoteList(),
    );
  }
}
