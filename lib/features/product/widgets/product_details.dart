import 'package:flutter/material.dart';
import 'package:paw_print/core/models/product_model.dart';
import 'package:paw_print/core/providers/magic_provider.dart';
import 'package:paw_print/core/providers/products_provider.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel product;
  const new({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 16,
        crossAxisAlignment: .stretch,
        children: [
          Text(
            product.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                product.category,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                '\$${product.price}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          DropdownMenu(
            width: double.infinity,
            hintText: 'Choose Size',
            dropdownMenuEntries: [
              DropdownMenuEntry(value: 'Small', label: 'Small'),
              DropdownMenuEntry(value: 'Medium', label: 'Medium'),
              DropdownMenuEntry(value: 'Large', label: 'Large'),
            ],
          ),
          FilledButton(
            onPressed: () {
              if (!context.read<MagicProvider>().isMagicEnabled) {
                return;
              }
              if (context.read<ProductsProvider>().cart.contains(product)) {
                context.read<ProductsProvider>().removeFromCart(product);
              } else {
                context.read<ProductsProvider>().addToCart(product);
              }
            },
            style: FilledButton.styleFrom(
              backgroundColor:
                  Theme.of(context).colorScheme.brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
            child: Text(
              context.watch<ProductsProvider>().cart.contains(product)
                  ? 'Remove from Cart'
                  : 'Add to Cart',
            ),
          ),
        ],
      ),
    );
  }
}
