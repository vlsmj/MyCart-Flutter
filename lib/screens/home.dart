import 'package:flutter/material.dart';
import 'package:my_cart_provider/common/item.dart';
import 'package:my_cart_provider/common/sliverappbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(title: 'Home'),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 32),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListItem(index: index),
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
