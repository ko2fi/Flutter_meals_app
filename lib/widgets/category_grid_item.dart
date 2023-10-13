import 'package:flutter/material.dart';
import 'package:meals/models/categorie.dart';
import 'package:meals/screens/categories_screen.dart';

class CategoryGridItem extends StatelessWidget {

  const CategoryGridItem({super.key, required this.categorie, required this.onSelectCategory});
  final Categorie categorie;
  final void Function() onSelectCategory;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor:Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              categorie.color.withOpacity(0.55),
              categorie.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(categorie.title, style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
        ),),
      ),
    );
  }
}
