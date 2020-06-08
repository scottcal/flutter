import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(
            child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/scott.jpg'),
            ),
            Text(
              'Scott Calafiore',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
                color: Colors.white,
              ),
            ),
            Text(
              'The Big Cheese',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'SourceSansPro',
                color: Colors.white,
              ),
          ),
          ],
        )),
      ),
    );
  }
}
