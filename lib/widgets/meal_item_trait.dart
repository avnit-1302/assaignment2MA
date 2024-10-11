import 'package:flutter/material.dart';

/// MealItemTrait is a stateless widget that displays an icon and a label
/// in a horizontal row. It is typically used to show traits or attributes
/// of a meal, such as its duration or complexity, with the icon and label
/// styled in white color.

class MealItemTrait extends StatelessWidget {
  const MealItemTrait({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        size: 17,
        color: Colors.white,
      ),
      const SizedBox(width: 6),
      Text(
        label,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ]);
  }
}
