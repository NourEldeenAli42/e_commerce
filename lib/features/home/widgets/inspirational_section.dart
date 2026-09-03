import 'package:flutter/material.dart';
import 'package:paw_print/core/providers/magic_provider.dart';
import 'package:paw_print/core/providers/products_provider.dart';
import 'package:provider/provider.dart';

class InspirationalSection extends StatelessWidget {
  const InspirationalSection({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedProducts =
        (context.watch<ProductsProvider>().allProducts.toList()..shuffle())
            .take(4)
            .toList();

    return Container(
      padding: const EdgeInsets.all(16),
      color: const Color(0xFF3634A3),
      width: double.infinity,
      child: Column(
        children: [
          if (!context.read<MagicProvider>().isMagicEnabled)
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
              ),
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Image.asset('assets/images/product1.png');
              },
            )
          else
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 16,
              ),
              itemCount: selectedProducts.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Image.network(
                  selectedProducts[index].imageUrl,
                  fit: BoxFit.cover,
                );
              },
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Inspirational',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('See all', style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
