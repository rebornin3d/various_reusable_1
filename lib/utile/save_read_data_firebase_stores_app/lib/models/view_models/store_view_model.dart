import '../store.dart';

class StoreViewModel {
  final Store store;

  StoreViewModel({this.store});

  String get storeId {
    return store.storeId;
  }

  String get name {
    return store.name;
  }

  String get address {
    return store.address;
  }

  String get color {
    return store.color;
  }
}
