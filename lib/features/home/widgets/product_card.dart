import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/product1.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton.filled(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
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
              child: Wrap(
                spacing: 8,
                children: [
                  Chip(label: Text('New'), side: .none),
                  Chip(label: Text('Exclusive'), side: .none),
                ],
              ),
            ),
          ],
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'ShineStopper\n',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: 'Anti-Glare Sunnies\n',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: '\$100',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              TextSpan(
                text: '   \$90',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
