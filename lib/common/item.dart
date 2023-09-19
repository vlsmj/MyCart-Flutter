import 'package:flutter/material.dart';
import 'package:my_cart_provider/models/catalog.dart';
import 'package:provider/provider.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    var item = context.select<CatalogModel, Item>(
      (catalog) => catalog.getByIndex(index),
    );

    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Image.network(
              item.imageUrl,
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primary,
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.add_shopping_cart_rounded,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        Text(
          item.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
