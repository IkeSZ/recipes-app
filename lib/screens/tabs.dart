import 'package:flutter/material.dart';

// Screens
import 'favorite.dart';
import 'categories.dart';

// Components
import '../components/mainDrawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  final List<Map<String, Object>> _screens = [
    {'title': 'Categorias', 'screen': Categories()},
    {'title': 'Favoritos', 'screen': FavoriteScreen()},
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['title'],
            style: TextStyle(color: Colors.white)),
      ),

      drawer: MainDrawer(),

      body: _screens[_selectedScreenIndex]['screen'],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orangeAccent,
        fixedColor: Colors.white,
        currentIndex: _selectedScreenIndex,

        onTap: _selectScreen,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Categorias'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritos'),
        ],
      ),
    );
  }
}
