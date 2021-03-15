import 'package:flutter/material.dart';

// Models
import '../models/meal.dart';

class MealDetail extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    final meal = ModalRoute.of(ctx).settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title, style: TextStyle(color: Colors.white)),
      ),

      body: Center(
        child: Text('Detalhes da Refeição'),
      ),
    );
  }
}
