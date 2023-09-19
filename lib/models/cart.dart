import 'package:flutter/material.dart';
import 'package:my_cart_provider/models/catalog.dart';

class CartModel extends ChangeNotifier {
  late CatalogModel _catalog;

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
    notifyListeners();
  }

  final List<int> _listOfIndex = [];

  List<Item> get items =>
      _listOfIndex.map((index) => _catalog.getByIndex(index)).toList();

  void addToCart(int index) {
    _listOfIndex.add(index);
    notifyListeners();
  }

  void removeFromCart(index) {
    _listOfIndex.remove(index);
    notifyListeners();
  }
}
