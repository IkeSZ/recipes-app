import 'package:flutter/material.dart';

// Screens
import 'screens/categoriesMeals.dart';
import 'screens/mealDetail.dart';
import 'screens/page404.dart';
import 'screens/tabs.dart';
import 'screens/settings.dart';

// Routes
import 'routes/appRoutes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,

        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed'
          ),
        ),
      ),

      routes: {
        AppRoutes.HOME: (_) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (_) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (_) => MealDetail(),
        AppRoutes.SETTINGS: (_) => Settings(),
      },

      onUnknownRoute: (_) {
        return MaterialPageRoute(
          builder: (_) {
            return Page404();
          }
        );
      },
    );
  }
}
