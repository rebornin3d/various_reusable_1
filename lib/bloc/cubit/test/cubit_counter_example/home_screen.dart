import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';
import 'counter_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title, required this.color})
      : super(key: key);

  final String title;
  final Color color;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> homeScreenkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScreenkey,
      appBar: AppBar(title: Text('Demo')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('YOu have pushed the button this many times: '),
            BlocConsumer<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counterValue.toString(),
                );
              },
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    heroTag: Text('${widget.title}'),
                    onPressed: () {

                  BlocProvider.of<CounterCubit>(context).decrement();
                }),
                FloatingActionButton(onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
