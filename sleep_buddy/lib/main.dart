import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SleepBuddyPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class SleepBuddyPage extends StatefulWidget {
  SleepBuddyPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SleepBuddyPage createState() => _SleepBuddyPage();
}

class _SleepBuddyPage extends State<SleepBuddyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: Container(
        height: 200,
        width: 200,
        child: FlatButton(
          onPressed: () => {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Sleep Now',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  )),
              Icon(
                Icons.alarm,
                color: Colors.white,
                size: 80,
              )
            ],
          ),
          color: Colors.blueAccent,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
