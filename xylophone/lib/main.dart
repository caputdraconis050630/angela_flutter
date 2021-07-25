import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({required int soundNum, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNum);
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final player = AudioCache();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              buildKey(soundNum: 1, color: Colors.red),
              buildKey(soundNum: 2, color: Colors.orange),
              buildKey(soundNum: 3, color: Colors.yellow),
              buildKey(soundNum: 4, color: Colors.green),
              buildKey(soundNum: 5, color: Colors.blue),
              buildKey(soundNum: 6, color: Colors.teal),
              buildKey(soundNum: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
