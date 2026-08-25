import 'package:flutter/material.dart';


class SummerEssentials extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: .bottomCenter,
      children: [
        Image.asset(
          'assets/images/Spotlight.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 16,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                'Summer Essentials',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Get your wardrobe ready for the sun',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
