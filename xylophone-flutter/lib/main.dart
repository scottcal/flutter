import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  PlaySound(1);
                },
                child: Text('click me'),
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  PlaySound(2);
                },
                child: Text('click me'),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  PlaySound(3);
                },
                child: Text('click me'),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  PlaySound(4);
                },
                child: Text('click me'),
              ),
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  PlaySound(5);
                },
                child: Text('click me'),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  PlaySound(6);
                },
                child: Text('click me'),
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  PlaySound(7);
                },
                child: Text('click me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
