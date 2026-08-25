import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;

  const CategoryChip({super.key, required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).colorScheme.brightness == Brightness.dark;

    return ChoiceChip(
      label: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: selected
              ? Colors.white
              : isDark
              ? Colors.white
              : Colors.black87,
        ),
      ),
      selected: selected,
      showCheckmark: false,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      backgroundColor: isDark ? Colors.black87 : Colors.white,
      selectedColor: Colors.black,
      side: BorderSide(
        color: selected
            ? Colors.transparent
            : isDark
            ? Colors.white24
            : Colors.black12,
      ),
      shape: const StadiumBorder(),
      labelPadding: const EdgeInsets.symmetric(horizontal: 6),
      pressElevation: 0,
      onSelected: (_) {},
    );
  }
}
