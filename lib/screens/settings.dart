import 'package:flutter/material.dart';

// Components
import '../components/mainDrawer.dart';

// Models
import '../models/settingsFilter.dart';

class Settings extends StatefulWidget {
  final Function(SettingsFilter) onSettingsChange;

  Settings(this.onSettingsChange);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var settings = SettingsFilter();

  Widget _createSwitch({
    String title,
    String subtitle,
    bool value,
    Function(bool) onChange
  }) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),

      value: value,
      onChanged: (value) {
        onChange(value);

        widget.onSettingsChange(settings);
      },
    );
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Configurações'),
      ),

      drawer: MainDrawer(),

      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),

              child: Text(
                'Configurações',
                style: TextStyle(fontSize: 24)
              ),
            ),

            Expanded(
              child: ListView(
                children: <Widget>[
                  _createSwitch(
                    title: 'Sem Glutén',
                    subtitle: 'Só exibe refeições sem glúten!',
                    value: settings.isGlutenFree,
                    onChange: (value) => setState(() => settings.isGlutenFree = value),
                  ),

                  _createSwitch(
                    title: 'Sem Lactose',
                    subtitle: 'Só exibe refeições sem lactose!',
                    value: settings.isLactoseFree,
                    onChange: (value) => setState(() => settings.isLactoseFree = value),
                  ),

                  _createSwitch(
                    title: 'Vegana',
                    subtitle: 'Só exibe refeições veganas!',
                    value: settings.isVegan,
                    onChange: (value) => setState(() => settings.isVegan = value),
                  ),

                  _createSwitch(
                    title: 'Vegetariana',
                    subtitle: 'Só exibe refeições vegetarianas!',
                    value: settings.isVegetarian,
                    onChange: (value) => setState(() => settings.isVegetarian = value),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
