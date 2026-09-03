import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:paw_print/core/providers/magic_provider.dart';
import 'package:paw_print/core/providers/navigation_provider.dart';
import 'package:paw_print/core/providers/products_provider.dart';
import 'package:paw_print/features/home/widgets/product_card.dart';
import 'package:provider/provider.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favorites',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${context.watch<ProductsProvider>().favorites.length} Articles',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            if (!context.read<MagicProvider>().isMagicEnabled ||
                (context.read<MagicProvider>().isMagicEnabled &&
                    context.watch<ProductsProvider>().favorites.isEmpty))
              Column(
                children: [
                  Image.asset('assets/images/no_favorites.png'),
                  const Text(
                    'No favourites yet!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  FilledButton(
                    onPressed: () =>
                        context.read<NavigationProvider>().changeTab(0),
                    style: FilledButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).colorScheme.brightness ==
                              Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                    child: const Text('Explore!'),
                  ),
                ],
              ),
            if (context.read<MagicProvider>().isMagicEnabled &&
                context.watch<ProductsProvider>().favorites.isNotEmpty)
              Expanded(
                child: MasonryGridView.builder(
                  itemCount: context.watch<ProductsProvider>().favorites.length,
                  crossAxisSpacing: 10,
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: context
                          .watch<ProductsProvider>()
                          .favorites[index],
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
