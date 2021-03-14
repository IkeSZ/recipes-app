import 'package:flutter/material.dart';

// Models
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    final category = ModalRoute.of(ctx).settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas', style: TextStyle(color: Colors.white)),
      ),

      body: Center(
        child: Text('Categoria selecionada: ${category.title}'),
      ),
    );
  }
}
