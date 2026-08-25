import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpandablesMenu extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          childrenPadding: .all(8),
          shape: RoundedRectangleBorder(borderRadius: .circular(8)),
          title: Text(
            'Product Description',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          children: [
            Text(
              'This is a sample product description. It provides details about the product, its features, and any other relevant information that might help the customer make a purchasing decision.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        ExpansionTile(
          childrenPadding: .all(8),
          shape: RoundedRectangleBorder(borderRadius: .circular(8)),
          title: Text(
            'Material',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          children: [
            Text(
              'This is a sample material description. It provides details about the product, its features, and any other relevant information that might help the customer make a purchasing decision.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        ExpansionTile(
          childrenPadding: .all(8),
          shape: RoundedRectangleBorder(borderRadius: .circular(8)),
          title: Row(
            children: [
              Text(
                'Reviews',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              SvgPicture.asset('assets/icons/filled_star.svg', height: 12),
              SvgPicture.asset('assets/icons/filled_star.svg', height: 12),
              SvgPicture.asset('assets/icons/filled_star.svg', height: 12),
              SvgPicture.asset('assets/icons/filled_star.svg', height: 12),
              SvgPicture.asset('assets/icons/star.svg', height: 12),
            ],
          ),

          children: [
            Text(
              'This is a sample product description. It provides details about the product, its features, and any other relevant information that might help the customer make a purchasing decision.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
