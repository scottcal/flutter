import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Poor App'),
          centerTitle: true,
          actions: <Widget>[Icon(Icons.comment), Icon(Icons.add_circle)],
          backgroundColor: Colors.grey[800],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Center(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.blue, Colors.red]),
                ),
                height: 50,
              ),
            ),
            Container(
                child: Text(
                  'hello poor app',
                  style: TextStyle(fontSize: 25),
                ),
                margin: const EdgeInsets.only(bottom: 40.0, top: 20.0),
                transform: Matrix4.rotationZ(0.2)),
            Image(
              image: AssetImage('images/poorman.jpg'),
            ),
          ],
        ),
      ),
    ),
  );
}
