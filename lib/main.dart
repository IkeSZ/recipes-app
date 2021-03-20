import 'package:flutter/material.dart';

// Screens
import 'screens/categoriesMeals.dart';
import 'screens/mealDetail.dart';
import 'screens/page404.dart';
import 'screens/tabs.dart';
import 'screens/settings.dart';

// Routes
import 'routes/appRoutes.dart';

// Models
import 'models/meal.dart';
import 'models/settingsFilter.dart';

// Data
import 'data/dummyData.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _availableMeals = DUMMY_MEALS;

  void _filterMeals(SettingsFilter settings) {
    setState(() {
      _availableMeals = DUMMY_MEALS.where((meal) {
        final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;

        return !filterGluten && !filterLactose && !filterVegan && !filterVegetarian;
      }).toList();
    });
  }

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
        AppRoutes.CATEGORIES_MEALS: (_) => CategoriesMealsScreen(_availableMeals),
        AppRoutes.MEAL_DETAIL: (_) => MealDetail(),
        AppRoutes.SETTINGS: (_) => Settings(_filterMeals),
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
