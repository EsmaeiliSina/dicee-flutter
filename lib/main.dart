import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1;
  int right = 1;
  void Roll() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset('images/dice$left.png'),
              ),
            ),
            // SizedBox(
            //   width: 10,
            // ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset('images/dice$right.png'),
              ),
            ),
          ],
        ),
        MaterialButton(
          onPressed: () {
            Roll();
          },
          child: Text(
            'Roll',
            style: TextStyle(color: Colors.red, fontSize: 30),
          ),
          height: 40,
          minWidth: 120,
          color: Colors.grey[800],
        )
      ],
    );
  }
}
