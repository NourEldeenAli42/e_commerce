import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 16,
        crossAxisAlignment: .stretch,
        children: [
          Text(
            'Nike',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'Solesprinter',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                '\$120',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          DropdownMenu(
            width: double.infinity,
            hintText: 'Choose Size',
            dropdownMenuEntries: [
              DropdownMenuEntry(value: 'Small', label: 'Small'),
              DropdownMenuEntry(value: 'Medium', label: 'Medium'),
              DropdownMenuEntry(value: 'Large', label: 'Large'),
            ],
          ),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor:
                  Theme.of(context).colorScheme.brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
            child: Text('Add to Bag'),
          ),
        ],
      ),
    );
  }
}
