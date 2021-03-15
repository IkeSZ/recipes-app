import 'package:flutter/material.dart';

// Models
import '../models/category.dart';

// Data
import '../data/dummyData.dart';

// Components
import '../components/mealItem.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    final category = ModalRoute.of(ctx).settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (_, index) {
          final meal = categoryMeals[index];

          return MealItem(meal);
        },
      ),
    );
  }
}
