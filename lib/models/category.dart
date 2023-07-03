// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

// ignore: empty_constructor_bodies
class Category {
  final String id;
  final String title;
  final Color color;

  const Category({
    required this.id,
    required this.title,
    this.color = Colors.black,
  });
}

class CategoryMeals {
  final String types;
  final String imageicon;

  const CategoryMeals({
    required this.types,
    required this.imageicon,
  });
}
