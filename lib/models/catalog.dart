import 'package:flutter/material.dart';

class CatalogModel {
  static const List<Item> items = [
    Item(
        id: 0,
        name: 'PBT GMK Mictlán Keycaps Cherry',
        imageUrl:
            'https://down-ph.img.susercontent.com/file/sg-11134201-22110-abgstr396mjvcf',
        price: 1999,
        sold: '1k sold'),
    Item(
        id: 1,
        name: 'Jujutsu Kaisen Anime Phone Case',
        imageUrl:
            'https://down-ph.img.susercontent.com/file/54dcb135159c04dc3e838ca8c5a12eed',
        price: 55,
        sold: '1.3k sold'),
    Item(
        id: 2,
        name: 'Levoit Core 300 Air Purifier',
        imageUrl:
            'https://down-ph.img.susercontent.com/file/11fc3af61864ecb503bd2054b8cc2db8',
        price: 6720,
        sold: '100 sold'),
    Item(
        id: 3,
        name: 'Kirkland Signature Milk Chocolate Covered Almonds',
        imageUrl:
            'https://down-ph.img.susercontent.com/file/cb948e08d660adee3f1b2c865fd5f10d',
        price: 1031,
        sold: '10.9k sold'),
    Item(
        id: 4,
        name: 'Korean Summer Muffin',
        imageUrl:
            'https://down-ph.img.susercontent.com/file/sg-11134201-23010-s0813t83nkmv08',
        price: 99,
        sold: '5k sold'),
    Item(
        id: 5,
        name: 'Mini USB Table Desk Personal Fan Metal Design',
        imageUrl:
            'https://down-ph.img.susercontent.com/file/4de1a134486a59be72db43068dc52804',
        price: 85,
        sold: '3.5k sold'),
    Item(
        id: 6,
        name: 'Dailyhome Plug in Flexible Wall Light Socket Adapter',
        imageUrl:
            'https://down-ph.img.susercontent.com/file/f81d477f9c4ede5d79e868192fee4dd7',
        price: 33,
        sold: '500 sold'),
    Item(
        id: 7,
        name: '[DUNKIN] Instant Stick Coffee Original Americano Coffee',
        imageUrl:
            'https://down-ph.img.susercontent.com/file/sg-11134201-22120-6tkf1w864qlvaf',
        price: 138,
        sold: '200 sold'),
    Item(
        id: 8,
        name: 'Nespresso Inissia Coffee Maker Cream With Free Capsules',
        imageUrl:
            'https://down-ph.img.susercontent.com/file/4c6901423226f88ae280fb2509724881',
        price: 9500,
        sold: '100 sold'),
    Item(
        id: 9,
        name: 'GLOW WISH KERATIN 99% Aloe Vera Hair Shampoo',
        imageUrl:
            'https://down-ph.img.susercontent.com/file/e12633d943892373924dd93f4a92947c',
        price: 109,
        sold: '2.5k sold'),
  ];

  Item getById(int id) => items[id];
}

@immutable
class Item {
  final int id;
  final String name;
  final String imageUrl;
  final int price;
  final String sold;

  const Item({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.sold,
  });

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
