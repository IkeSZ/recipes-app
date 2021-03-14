import 'package:flutter/material.dart';

// Models
import '../models/category.dart';

// Routes
import '../routes/appRoutes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.CATEGORIES_MEALS, arguments: category);
  }

  @override
  Widget build(BuildContext ctx) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),

      onTap: () => _selectCategory(ctx),

      child: Container(
        padding: EdgeInsets.all(15),

        child: Text(category.title, style: Theme.of(ctx).textTheme.headline6),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),

            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.5),
              category.color
            ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            )
        ),
      ),
    );
  }
}
