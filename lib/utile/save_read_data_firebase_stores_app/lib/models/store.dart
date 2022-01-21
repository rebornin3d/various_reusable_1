import 'package:cloud_firestore/cloud_firestore.dart';

class Store {
  final String name;
  final String address;
  final String color;
  DocumentReference reference;

  Store(this.name, this.address, this.color, [this.reference]);

  String get storeId {
    print(reference.id);
    return reference.id;
  }

  Map<String, dynamic> toMap() {
    return {"name": name, "address": address, "color": color};
  }
}
