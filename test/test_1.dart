import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/basics/changeNotifier_notifyListeners.dart';



class CartModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<int> _items = [];

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<int> get items => UnmodifiableListView(_items);

  /// The current total price of all items (assuming all items cost $42).
  int get totalPrice => _items.length * 42;

  /// Adds [item] to cart. This and [removeAll] are the only ways to
  /// modify the
  /// cart from the outside.
  void add(int item) {
    _items.add(item);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void removeAll() {
    _items.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}