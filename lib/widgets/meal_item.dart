import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';

import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
  });

  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      MealDetailScreen.routeName,
      arguments: id,
    );
  }

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }

  String get affordibilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'Unknown';
    }
  }

  Widget details({BuildContext context, IconData icon, String label}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 20,
            color: Color.fromRGBO(0, 0, 0, 0.7),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontSize: 14,
                ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 16;
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRadius),
                topRight: Radius.circular(borderRadius),
              ),
              child: Image.network(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              width: 360,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  details(
                    context: context,
                    icon: Icons.schedule,
                    label: '$duration min',
                  ),
                  details(
                    context: context,
                    icon: Icons.work,
                    label: complexityText,
                  ),
                  details(
                    context: context,
                    icon: Icons.attach_money,
                    label: affordibilityText,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
