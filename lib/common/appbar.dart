import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.isCartIconVisible,
    required this.title,
  });

  final bool? isCartIconVisible;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      actions: <Widget>[
        if (isCartIconVisible ?? true)
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Cart',
            onPressed: () {
              context.push('/cart');
            },
          )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
