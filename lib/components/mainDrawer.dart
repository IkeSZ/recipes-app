import 'package:flutter/material.dart';

// Routes
import '../routes/appRoutes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem({ IconData icon, String label, Function onTap }) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(label, style: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 24,
      )),

      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext ctx) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,

            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(
              bottom: 20
            ),

            color: Colors.orangeAccent,

            alignment: Alignment.bottomCenter,

            child: Text('Vamos Cozinhar?', style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 30,
              color: Colors.white
            )),
          ),

          _createItem(
            icon: Icons.restaurant,
            label: 'Refeições',
            onTap: () => Navigator.of(ctx).pushNamed(AppRoutes.HOME),
          ),

          _createItem(
            icon: Icons.settings,
            label: 'Configurações',
            onTap: () => Navigator.of(ctx).pushNamed(AppRoutes.SETTINGS),
          ),
        ],
      ),
    );
  }
}