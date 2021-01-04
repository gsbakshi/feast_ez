import 'package:flutter/material.dart';
import 'package:meals_app/widgets/category_meals.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoryItem({
    Key key,
    @required this.title,
    @required this.color,
  }) : super(key: key);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) => CategoryMeals(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 15;
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          color: color,
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.6),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
