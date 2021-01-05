import 'package:flutter/material.dart';

import '../dummy_data.dart';
// import '../models/meal.dart';
import '../widgets/styling/section_list.dart';
import '../widgets/styling/section_title.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key key}) : super(key: key);

  static const routeName = '/meal-detail-screen';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        // title: Text('$mealId'),
        title: Text('${selectedMeal.title}'),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(
                  label: 'Ingredients',
                ),
                SectionList(
                  dataHandler: selectedMeal.ingredients,
                ),
                SizedBox(height: 20),
                SectionTitle(
                  label: 'Steps',
                ),
                SectionList(
                  dataHandler: selectedMeal.steps,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
