import 'package:flutter/material.dart';

class CatalogModel {
  static const List<Item> items = [
    Item(
      id: 0,
      name: 'PBT GMK Mictlán Keycaps Cherry',
      imageUrl:
          'https://down-ph.img.susercontent.com/file/sg-11134201-22110-abgstr396mjvcf',
      price: 1999,
    ),
    Item(
      id: 1,
      name: 'Jujutsu Kaisen Anime Phone Case',
      imageUrl:
          'https://down-ph.img.susercontent.com/file/54dcb135159c04dc3e838ca8c5a12eed',
      price: 55,
    ),
    Item(
      id: 2,
      name: 'Levoit Core 300 Air Purifier',
      imageUrl:
          'https://down-ph.img.susercontent.com/file/11fc3af61864ecb503bd2054b8cc2db8',
      price: 6720,
    ),
    Item(
      id: 3,
      name: 'Kirkland Signature Milk Chocolate Covered Almonds',
      imageUrl:
          'https://down-ph.img.susercontent.com/file/cb948e08d660adee3f1b2c865fd5f10d',
      price: 1031,
    ),
    Item(
      id: 4,
      name: 'Korean Summer Muffin',
      imageUrl:
          'https://down-ph.img.susercontent.com/file/sg-11134201-23010-s0813t83nkmv08',
      price: 99,
    ),
    Item(
      id: 5,
      name: 'Mini USB Table Desk Personal Fan Metal Design',
      imageUrl:
          'https://down-ph.img.susercontent.com/file/4de1a134486a59be72db43068dc52804',
      price: 85,
    ),
    Item(
      id: 6,
      name: 'Dailyhome Plug in Flexible Wall Light Socket Adapter',
      imageUrl:
          'https://down-ph.img.susercontent.com/file/f81d477f9c4ede5d79e868192fee4dd7',
      price: 33,
    ),
    Item(
      id: 7,
      name: '[DUNKIN] Instant Stick Coffee Original Americano Coffee',
      imageUrl:
          'https://down-ph.img.susercontent.com/file/sg-11134201-22120-6tkf1w864qlvaf',
      price: 138,
    ),
    Item(
      id: 8,
      name: 'Nespresso Inissia Coffee Maker Cream With Free Capsules',
      imageUrl:
          'https://down-ph.img.susercontent.com/file/4c6901423226f88ae280fb2509724881',
      price: 9500,
    ),
    Item(
      id: 9,
      name: 'GLOW WISH KERATIN 99% Aloe Vera Hair Shampoo',
      imageUrl:
          'https://down-ph.img.susercontent.com/file/e12633d943892373924dd93f4a92947c',
      price: 109,
    ),
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
