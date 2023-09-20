import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cart_provider/common/theme.dart';
import 'package:my_cart_provider/models/cart.dart';
import 'package:my_cart_provider/models/catalog.dart';
import 'package:my_cart_provider/screens/cart.dart';
import 'package:my_cart_provider/screens/home.dart';
import 'package:my_cart_provider/screens/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

GoRouter router() {
  return GoRouter(initialLocation: '/login', routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/cart',
      builder: (context, state) => const CartScreen(),
    )
  ]);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => CatalogModel(),
        ),
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
            create: (context) => CartModel(),
            update: (context, catalog, cart) {
              if (cart == null) throw ArgumentError.notNull('cart');
              cart.catalog = catalog;
              return cart;
            })
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        routerConfig: router(),
      ),
    );
  }
}
