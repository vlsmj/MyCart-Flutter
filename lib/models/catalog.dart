import 'package:flutter/material.dart';

class CatalogModel {
  static const List<Item> items = [
    Item(id: 0, name: 'Test 0', imageUrl: '', price: 0),
    Item(id: 1, name: 'Test 1', imageUrl: '', price: 100),
    Item(id: 2, name: 'Levoit Air Purifier', imageUrl: '', price: 200),
    Item(id: 3, name: 'Test 3', imageUrl: '', price: 300),
  ];

  Item getByIndex(int index) => items[index];
}

@immutable
class Item {
  final int id;
  final String name;
  final String imageUrl;
  final int price;

  const Item({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
