import 'package:flutter/material.dart';

// Models
import '../models/meal.dart';

class MealDetail extends StatelessWidget {
  Widget _createSectionTitle(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(title,
          style: TextStyle(fontSize: 22, fontFamily: 'RobotoCondensed')),
    );
  }

  Widget _createSectionContainer({Widget child}) {
    return Container(
        width: 350,
        height: 230,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 4, bottom: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: child);
  }

  @override
  Widget build(BuildContext ctx) {
    final meal = ModalRoute.of(ctx).settings.arguments as Meal;

    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title, style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(meal.imageUrl, fit: BoxFit.cover),
              ),

              _createSectionTitle('Ingredientes'),

              _createSectionContainer(
                child: ListView.builder(
                  itemCount: meal.ingredients.length,
                  itemBuilder: (_, index) {
                    final meals = meal.ingredients[index];

                    return Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: Text(meals),
                      ),
                      color: Colors.orangeAccent,
                    );
                  },
                ),
              ),

              _createSectionTitle('Passos'),

              _createSectionContainer(
                child: ListView.builder(
                  itemCount: meal.steps.length,

                  itemBuilder: (_, index) {
                    final steps = meal.steps[index];

                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Text('${index + 1}'),
                          ),

                          title: Text(steps, style: TextStyle(fontSize: 15)),
                        ),

                        Divider(),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
