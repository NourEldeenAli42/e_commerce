import 'package:flutter/material.dart';
import 'package:paw_print/core/providers/magic_provider.dart';
import 'package:paw_print/core/providers/navigation_provider.dart';
import 'package:paw_print/core/providers/products_provider.dart';
import 'package:paw_print/e_commerce_app.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(create: (_) => ProductsProvider()),
        ChangeNotifierProvider(create: (_) => MagicProvider()),
      ],
      child: const ECommerceApp(),
    ),
  );
}
