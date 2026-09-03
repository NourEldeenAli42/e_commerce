import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:paw_print/core/providers/navigation_provider.dart';
import 'package:paw_print/core/providers/products_provider.dart';
import 'package:paw_print/features/home/widgets/product_card.dart';
import 'package:provider/provider.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProducts = context.watch<ProductsProvider>().cart;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        spacing: 16,
        children: [
          if (cartProducts.isEmpty)
            Column(
              children: [
                Image.asset('assets/images/cart.png'),
                const Text(
                  'Your cart is empty',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                FilledButton(
                  onPressed: () =>
                      context.read<NavigationProvider>().changeTab(0),
                  child: const Text(
                    'Inspire me',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            )
          else
            Expanded(
              child: MasonryGridView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: cartProducts.length,
                crossAxisSpacing: 10,
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(product: cartProducts[index]);
                },
              ),
            ),
        ],
      ),
    );
  }
}
