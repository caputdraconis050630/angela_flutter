import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('I am Panda'),
        ),
        body: Center(
          child: Image.network('https://ouch-cdn2.icons8.com/fyaZKy94y9eYCoUJjhst6Ge0JLBa0vu_1PotnB6Hz8Y/rs:fit:784:867/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMTAw/L2Q2ZDRiYWUxLTI4/NWEtNDE5My04MTlh/LTc5ZWQzOGY2NGQ4/Yi5zdmc.png'),
        ),
      ),
    ),
  );
}
