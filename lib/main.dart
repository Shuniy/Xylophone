import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded soundButton(int n, Color c) {
    return Expanded(
      child: FlatButton(
        color: c,
        onPressed: () {
          playSound(n);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              soundButton(1, Colors.red),
              soundButton(2, Colors.indigo),
              soundButton(3, Colors.pink),
              soundButton(4, Colors.blue),
              soundButton(5, Colors.yellow),
              soundButton(6, Colors.orange),
              soundButton(7, Colors.green),
              soundButton(8, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
