import 'package:flutter/material.dart';

class Categorie {
  // constructor
  Categorie({
    required this.id,
    required this.title,
    this.color = Colors.orange,
});

  final String id;
  final String title;
  final Color color;
}
