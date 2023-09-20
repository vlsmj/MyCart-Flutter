import 'package:flutter/material.dart';
import 'package:my_cart_provider/common/util.dart';
import 'package:my_cart_provider/models/cart.dart';
import 'package:my_cart_provider/models/catalog.dart';
import 'package:provider/provider.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    var item = context.select<CatalogModel, Item>(
      (catalog) => catalog.getById(id),
    );
    var cart = context.read<CartModel>();

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
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  cart.addToCart(id);
                  final snackBar = SnackBar(
                    content: Text('${item.name} has been added to your cart.'),
                    action: SnackBarAction(
                      label: 'Dismiss',
                      onPressed: () =>
                          ScaffoldMessenger.of(context).hideCurrentSnackBar(),
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  padding: const EdgeInsets.all(6),
                  margin: const EdgeInsets.all(8),
                  child: const Icon(
                    Icons.add_shopping_cart_rounded,
                    color: Colors.white,
                  ),
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
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Util.convertToCurrency(item.price),
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            Text(
              item.sold,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        )
      ],
    );
  }
}
