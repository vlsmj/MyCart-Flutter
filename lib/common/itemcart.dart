import 'package:flutter/material.dart';
import 'package:my_cart_provider/common/util.dart';
import 'package:my_cart_provider/models/cart.dart';
import 'package:my_cart_provider/models/catalog.dart';
import 'package:provider/provider.dart';

class ListItemCart extends StatelessWidget {
  const ListItemCart({
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

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Image.network(item.imageUrl),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.all(4),
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      cart.removeFromCart(id);
                      final snackBar = SnackBar(
                        content:
                            Text('${item.name} has been removed to your cart.'),
                        action: SnackBarAction(
                          label: 'Dismiss',
                          onPressed: () => ScaffoldMessenger.of(context)
                              .hideCurrentSnackBar(),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Icon(
                      Icons.remove_circle,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(item.name),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              Util.convertToCurrency(item.price),
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
