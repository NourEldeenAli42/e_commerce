import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductPreviewImage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/shoe.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 16,
          right: 16,
          child: SvgPicture.asset('assets/icons/share.svg'),
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: SvgPicture.asset('assets/icons/heart.svg'),
        ),
      ],
    );
  }
}
