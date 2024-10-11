import 'package:flutter/material.dart';

/// The Category class represents a meal category with an id, title,
/// and an optional color (defaulting to orange).
/// It is used to organize meals into different categories.

class Category {
  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });

  final String id;
  final String title;
  final Color color;
}
