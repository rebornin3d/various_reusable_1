import 'dart:convert';

import 'package:flutter/material.dart';

import 'character.dart';
import 'character_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Isolate Demooo';

    return MaterialApp(
      title: appTitle,
      home: CharacterList(key: null),
    );
  }
}

class CharacterList extends StatefulWidget {
  CharacterList({required Key? key}) : super(key: key);

  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  List<Character> characterList = [];

  void getCharactersfromApi() async {
    CharacterApi.getCharacters().then(
      (response) {
        setState(
          () {
            Iterable list = json.decode(response.body);
            characterList =
                list.map((model) => Character.fromJson(model)).toList();
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    getCharactersfromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Breaking Bad Characters"),
      ),
      body: Container(

        child: ListView.builder(
          itemCount: characterList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(characterList[index].name),
              subtitle: Text(characterList[index].nickname),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(characterList[index].img),
              ),
            );
          },
        ),
      ),
    );
  }
}
