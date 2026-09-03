import 'package:flutter/material.dart';

class ShoeCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const .symmetric(horizontal: 16),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),

            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/shoe_card.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  'Hot drops',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Must have sneakers',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.brightness ==
                            Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                  onPressed: () {},
                  child: Text('Find out', style: TextStyle()),
                ),
              ],
            ),
          ),
          Align(
            alignment: .bottomRight,
            child: Image.asset(
              'assets/images/shoe.png',

              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
