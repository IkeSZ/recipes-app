import 'package:flutter/material.dart';

// Components
import '../components/categoryItem.dart';

// Data
import '../data/dummyData.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos Cozinhar?', style: TextStyle(color: Colors.white)),
      ),

      body: GridView(
        padding: const EdgeInsets.all(20),

        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),

        children: DUMMY_CATEGORIES.map((category) {
          return CategoryItem(category);
        }).toList(),
      ),
    );
  }
}
