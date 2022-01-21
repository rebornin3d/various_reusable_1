import 'package:cloud_firestore/cloud_firestore.dart';

import '../store.dart';

class AddStoreViewModel {
  String storeName = "";
  String storeAddress = "";
  String storeColor = "";

  void saveStore() {
    final store = Store(storeName, storeAddress, storeColor);

    FirebaseFirestore.instance.collection("stores").add(store.toMap());
  }
}
