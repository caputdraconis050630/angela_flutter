import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.amberAccent,
        ),
        body: AnsweringBall(),
      ),
    ),
  );
}

class AnsweringBall extends StatefulWidget {
  @override
  _AnsweringBallState createState() => _AnsweringBallState();
}

class _AnsweringBallState extends State<AnsweringBall> {
  int randomNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                child: Image.asset('images/ball$randomNum.png'),
                onPressed: () {
                  setState(() {
                    randomNum = Random().nextInt(5) + 1;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
