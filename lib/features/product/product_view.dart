import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paw_print/core/models/product_model.dart';
import 'package:paw_print/core/providers/products_provider.dart';
import 'package:paw_print/features/home/widgets/best_sellers_section.dart';
import 'package:paw_print/features/product/widgets/delivery_details.dart';
import 'package:paw_print/features/product/widgets/expandables_menu.dart';
import 'package:paw_print/features/product/widgets/product_details.dart';
import 'package:paw_print/features/product/widgets/product_preview_image.dart';
import 'package:provider/provider.dart';

class ProductView extends StatelessWidget {
  final ProductModel givenProduct;

  const new({super.key, required this.givenProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [SvgPicture.asset('assets/icons/cart.svg')],
        actionsPadding: .all(16),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            ProductPreviewImage(
              imageUrl: givenProduct.imageUrl,
              isFavorite: givenProduct.isFavorite,
              onFavoriteToggle: () => context
                  .read<ProductsProvider>()
                  .toggleFavorite(givenProduct.id),
            ),
            ProductDetails(product: givenProduct),
            ExpandablesMenu(),
            DeliveryDetails(),
            Divider(thickness: 1, color: Colors.grey[300]),
            BestSellersSection(title: 'For You'),
            Divider(thickness: 1, color: Colors.grey[300]),
            BestSellersSection(title: 'Complete the look', gridView: true),
            Divider(thickness: 1, color: Colors.grey[300]),
            BestSellersSection(title: 'More from ${givenProduct.category}'),
          ],
        ),
      ),
    );
  }
}
