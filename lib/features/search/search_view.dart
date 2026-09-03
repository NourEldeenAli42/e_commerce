import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paw_print/core/providers/magic_provider.dart';
import 'package:paw_print/core/providers/products_provider.dart';
import 'package:paw_print/features/home/widgets/product_card.dart';
import 'package:provider/provider.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchProvider = context.watch<ProductsProvider>();
    final results = searchProvider.searchResults;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            if (context.watch<MagicProvider>().isMagicEnabled)
              SearchBar(
                onChanged: searchProvider.updateSearchResults,
                hintText: 'Search for products...',
                leading: SvgPicture.asset('assets/icons/SearchMenu.svg'),
              ),
            Expanded(
              child: MasonryGridView.builder(
                crossAxisSpacing: 10,
                itemCount: results.length,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                itemBuilder: (context, index) {
                  return ProductCard(product: results[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
