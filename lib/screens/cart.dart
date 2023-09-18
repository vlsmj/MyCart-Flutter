import 'package:flutter/material.dart';
import 'package:my_cart_provider/common/appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Cart',
        isCartIconVisible: false,
      ),
      body: Text('Cart Screen'),
    );
  }
}
