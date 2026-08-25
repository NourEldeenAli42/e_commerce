import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  'Favorites',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  '0 Articles',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset('assets/images/no_favourites.png'),
                Text(
                  'No favourites yet!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.brightness ==
                            Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                  child: Text('Explore!'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
