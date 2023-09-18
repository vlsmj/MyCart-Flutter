import 'package:flutter/material.dart';
import 'package:my_cart_provider/common/sliverappbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(title: 'Home'),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text('$index'),
              ),
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
