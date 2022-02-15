import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

// One simple action: Increment
enum Actions { Increment }

int counterReducer(int state, dynamic action) {
  if (action == Actions.Increment) {
    return state + 1;
  }

  return state;
}

void main() {
  final store = Store<int>(counterReducer, initialState: 0);

  runApp(
    FlutterReduxApp(
      title: 'Flutter Redux Demo',
      store: store,
    ),
  );
}

class FlutterReduxApp extends StatelessWidget {
  final Store<int> store;
  final String title;

  const FlutterReduxApp({
    Key? key,
    required this.store,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark(),
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StoreConnector<int, String>(
                  converter: (store) => store.state.toString(),
                  builder: (context, count) {
                    return Text(
                      'The button has been pushed this many times: $count',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                ),
                StoreConnector<int, String>(
                    converter: (store) => store.toString(),
                    builder: (context, X) {
                      return Text(
                        store.state.toString(),
                        style: Theme.of(context).textTheme.headline4,
                      );
                    }),
              ],
            ),
          ),
          floatingActionButton: StoreConnector<int, VoidCallback>(
            converter: (store) {
              return () => store.dispatch(Actions.Increment);
            },
            builder: (context, callback) {
              return FloatingActionButton(
                // Attach the `callback` to the `onPressed` attribute
                onPressed: callback,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              );
            },
          ),
        ),
      ),
    );
  }
}
