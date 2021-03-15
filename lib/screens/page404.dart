import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text('Página não encontrada', style: TextStyle(
        color: Colors.white,
      ))),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Text('404', style: TextStyle(
              fontSize: 32
            )),
            Text('I', style: TextStyle(
              fontSize: 40,
            )),
            Text('Página não encontrada', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300
            ))
          ],
        ),
      ),
    );
  }
}
