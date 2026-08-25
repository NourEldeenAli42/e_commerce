import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class DeliveryDetails extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/truck.svg'),
          SizedBox(width: 8),
          Text(
            '2-4 workdays',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Text(
            'Free Shipping',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.green[500],
            ),
          ),
        ],
      ),
    );
  }
}
