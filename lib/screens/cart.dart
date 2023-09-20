import 'package:flutter/material.dart';
import 'package:my_cart_provider/common/appbar.dart';
import 'package:my_cart_provider/common/itemcart.dart';
import 'package:my_cart_provider/models/cart.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cart = context.watch<CartModel>();

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Cart',
        isCartIconVisible: false,
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) => ListItemCart(id: cart.items[index].id),
      ),
    );
  }
}
