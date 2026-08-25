import 'package:flutter/material.dart';
import 'package:paw_print/features/home/widgets/product_card.dart';

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
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 0.55,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            )
          else
            SingleChildScrollView(
              scrollDirection: .horizontal,
              child: Row(
                spacing: 16,
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
