import 'package:flutter/material.dart';
import 'package:paw_print/core/models/product_model.dart';
import 'package:paw_print/core/providers/magic_provider.dart';
import 'package:paw_print/core/providers/products_provider.dart';
import 'package:paw_print/features/product/product_view.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const new({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductView(givenProduct: product),
                    ),
                  );
                },
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  cacheHeight: 300,
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton.filled(
                onPressed: () {
                  if (!context.read<MagicProvider>().isMagicEnabled) {
                    return;
                  }
                  context.read<ProductsProvider>().toggleFavorite(product.id);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        product.isFavorite
                            ? 'Removed from favorites'
                            : 'Added to favorites',
                      ),

                      behavior: .floating,
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: product.isFavorite
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border),
                style: IconButton.styleFrom(
                  backgroundColor:
                      Theme.of(context).colorScheme.brightness ==
                          Brightness.dark
                      ? Colors.black
                      : Colors.white,
                  foregroundColor:
                      Theme.of(context).colorScheme.brightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: Wrap(
                spacing: 8,
                children: product.tags
                    .map(
                      (tag) => Chip(
                        labelPadding: .all(0),
                        label: Text(tag, style: TextStyle(fontSize: 12)),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        labelStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${product.category}\n',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: '${product.name}\n',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: '\$${product.price}',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              if (product.discount != null) ...[
                const TextSpan(text: ' '),
                TextSpan(
                  text: '\$${product.discount}',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
