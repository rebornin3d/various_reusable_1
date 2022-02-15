import 'package:flutter/material.dart';
import 'package:flutter_application_1/PROVIDER/TENSOR/ChangeNitifierAndProvider/lib/state/theme_state.dart';
import 'package:provider/provider.dart';

void main() => runApp(Root());

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: create
    )
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(),
        bottomNavigationBar: BottomAppBar());
  }
}
