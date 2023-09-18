import 'package:flutter/material.dart';
import 'package:my_cart_provider/common/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(
          title: 'Home',
        ),
        body: Center(
          child: Text('Home Screen'),
        ));
  }
}
