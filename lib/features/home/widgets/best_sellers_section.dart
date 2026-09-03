import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:paw_print/core/models/product_model.dart';
import 'package:paw_print/core/providers/magic_provider.dart';
import 'package:paw_print/core/providers/products_provider.dart';
import 'package:paw_print/features/home/widgets/product_card.dart';
import 'package:provider/provider.dart';

class BestSellersSection extends StatelessWidget {
  final bool showTitle;
  final String title;
  final bool gridView;
  const new({
    super.key,
    this.showTitle = true,
    this.title = 'Best Sellers',
    this.gridView = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          if (showTitle)
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          if (gridView)
            MasonryGridView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final ProductModel product;
                if (context.watch<MagicProvider>().isMagicEnabled) {
                  final selectedProducts =
                      (context.watch<ProductsProvider>().allProducts.toList()
                            ..shuffle())
                          .take(4)
                          .toList();
                  product = selectedProducts[index];
                } else {
                  product = context.watch<ProductsProvider>().allProducts[0];
                }

                return ProductCard(product: product);
              },
            )
          else
            SingleChildScrollView(
              scrollDirection: .horizontal,
              child: Row(
                spacing: 16,
                children: List.generate(4, (index) {
                  final ProductModel product;
                  if (context.watch<MagicProvider>().isMagicEnabled) {
                    final selectedProducts =
                        (context.watch<ProductsProvider>().allProducts.toList()
                              ..shuffle())
                            .take(4)
                            .toList();
                    product = selectedProducts[index];
                  } else {
                    product = context.watch<ProductsProvider>().allProducts[0];
                  }
                  return ProductCard(product: product);
                }),
              ),
            ),
        ],
      ),
    );
  }
}
