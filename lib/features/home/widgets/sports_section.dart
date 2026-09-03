import 'package:flutter/material.dart';

class FullSection extends StatelessWidget {
  final String title;
  final String description;
  final Color backgroundColor;
  final String imagePath;
  const new({
    super.key,
    required this.title,
    required this.description,
    required this.backgroundColor,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: backgroundColor),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
          Text(
            description,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: .center,
            children: [
              Image.asset(
                imagePath,
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
