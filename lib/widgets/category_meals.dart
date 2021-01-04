import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  const CategoryMeals({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TheRecipes'),
      ),
      body: Center(
        child: Text(
          'Recipes for Category',
        ),
      ),
    );
  }
}
