import 'package:flutter/material.dart';
import 'package:my_cart_provider/models/catalog.dart';

class CartModel extends ChangeNotifier {
  late CatalogModel _catalog;

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
    notifyListeners();
  }

  final List<int> _listOfIds = [];

  List<Item> get items => _listOfIds.map((id) => _catalog.getById(id)).toList();

  void addToCart(int id) {
    _listOfIds.add(id);
    notifyListeners();
  }

  void removeFromCart(id) {
    _listOfIds.remove(id);
    notifyListeners();
  }
}
