import 'package:flutter/material.dart';


class InspirationalSection extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Color(0xFF3634A3),
      width: double.infinity,
      child: Column(
        children: [
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio:
                  MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.5),
              crossAxisSpacing: 16,
            ),
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Image.asset('assets/images/product1.png');
            },
          ),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'Inspirational',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: .bold,
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
