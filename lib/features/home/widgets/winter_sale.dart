import 'package:flutter/material.dart';

class WinterSale extends StatelessWidget {
  const WinterSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      alignment: .center,
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: AssetImage('assets/images/blue_card.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Text.rich(
        textAlign: .center,
        TextSpan(
          children: [
            TextSpan(
              text: 'Winter Sale\n',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: 'Stay cozy with up to ',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            TextSpan(
              text: '40% ',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: 'off winter clothing and accessories',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
