import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                onPressed: () {
                  playSound(1);
                },
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () {
                  playSound(2);
                },
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () {
                  playSound(3);
                },
                color: Colors.deepOrange,
              ),
              FlatButton(
                onPressed: () {
                  playSound(4);
                },
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  playSound(5);
                },
                color: Colors.green,
              ),
              FlatButton(
                onPressed: () {
                  playSound(6);
                },
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () {
                  playSound(7);
                },
                color: Colors.indigo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoteButton extends StatefulWidget {
  @override
  _NoteButtonState createState() => _NoteButtonState();
}

class _NoteButtonState extends State<NoteButton> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
