import 'package:flutter/material.dart';

// Models
import '../models/category.dart';
import '../models/meal.dart';

// Components
import '../components/mealItem.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final List<Meal> meals;

  const CategoriesMealsScreen(this.meals);

  @override
  Widget build(BuildContext ctx) {
    final category = ModalRoute.of(ctx).settings.arguments as Category;

    final categoryMeals = meals.where((meal) {
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
