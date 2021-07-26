import 'package:flutter/material.dart';
import 'package:proyecto_final/widget/iconContainer.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            const Color(4280887593),
            const Color(4279505940),
          ], begin: Alignment.topCenter)),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconContainer(
                    url: 'images/dan.jpg',
                  ),
                  Text(
                    'Mauricio Matuz Tamayo 191209',
                    style: TextStyle(fontFamily: 'FredokaOne', fontSize: 18.0),
                  ),
                  Text(
                    'Jaime Grimaldo Moreno 191214',
                    style: TextStyle(fontFamily: 'FredokaOne', fontSize: 18.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
