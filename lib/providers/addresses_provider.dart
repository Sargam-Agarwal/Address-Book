import 'dart:io';
import 'package:flutter/material.dart';

import '../models/address.dart';
import '../models/dbHelper.dart';

class AddressesProvider with ChangeNotifier {
  List<Address> _items = [];

  List<Address> get items {
    return [..._items];
  }

  void addAddress(Address newAddress) {
    _items.add(newAddress);
    DBHelper.insert('address', {
      'title': newAddress.title,
      'id': newAddress.id,
      'address': newAddress.address,
      'image': newAddress.image.path
    });

    notifyListeners();
  }

  Future<void> fetchStoredData() async {
    final dataMapList = await DBHelper.getData();
    _items = dataMapList
        .map(
          (dataMap) => Address(
            id: dataMap['id'] as String,
            title: dataMap['title'] as String,
            address: dataMap['address'] as String,
            image: File(dataMap['image'] as String),
          ),
        )
        .toList();
    notifyListeners();
  }
}
