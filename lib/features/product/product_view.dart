import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paw_print/features/home/widgets/best_sellers_section.dart';
import 'package:paw_print/features/product/widgets/delivery_details.dart';
import 'package:paw_print/features/product/widgets/expandables_menu.dart';
import 'package:paw_print/features/product/widgets/product_details.dart';
import 'package:paw_print/features/product/widgets/product_preview_image.dart';

class ProductView extends StatelessWidget {
  const new({super.key});

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
            ProductPreviewImage(),
            ProductDetails(),
            ExpandablesMenu(),
            DeliveryDetails(),
            Divider(thickness: 1, color: Colors.grey[300]),
            BestSellersSection(title: 'For You'),
            Container(
              color: Color(0xFFF2F2F7),
              child: BestSellersSection(
                title: 'Complete the look',
                gridView: true,
              ),
            ),
            BestSellersSection(title: 'More from Nike'),
          ],
        ),
      ),
    );
  }
}
