import 'package:flutter/material.dart';

// Screens
import 'screens/categories.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
      ),

      home: Categories(),
    );
  }
}
